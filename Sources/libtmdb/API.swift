//
//  API.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation
import RxSwift

protocol APIRequest {
    associatedtype Response: Decodable
    
    var endpoint  : String { get }
    var parameters: Dictionary<String, String> { get }
}

public class API {
    private let baseURL: URL         = URL(string: "https://api.themoviedb.org/3")!
    private let session: URLSession  = URLSession(configuration: .default)
    private let decoder: JSONDecoder = JSONDecoder()
    
    private let apiKey : String
    
    public enum APIError: Error {
        case unknownResponseError
    }
    
    public init(_ key: String) {
        apiKey = key
    }
    
    internal func _fetch<T: APIRequest>(_ request: T) -> Single<T.Response> {
        return Single<T.Response>.create { [session, decoder] observer in
            let urlRequest = self._build(request)
            let task = session.dataTask(with: urlRequest) { data, response, error in
                if let data = data {
                    do {
                        let json = try decoder.decode(T.Response.self, from: data)
                        observer(.success(json))
                    } catch {
                        let str = String(data: data, encoding: .utf8)
                        print(str ?? "DECODERESPERR")
                        observer(.error(error))
                    }
                } else if let error = error {
                    observer(.error(error))
                } else {
                    observer(.error(APIError.unknownResponseError))
                }
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
    
    private func _build<T: APIRequest>(_ request: T) -> URLRequest {
        var components = URLComponents(url: baseURL.appendingPathComponent(request.endpoint), resolvingAgainstBaseURL: false)
        components!.queryItems = request.parameters.map { URLQueryItem(name: $0.0, value: $0.1) }
        components!.queryItems?.append(URLQueryItem(name: "api_key", value: "0bfcefba39ca00a36e4f97e47cf98a76"))
        
        var urlRequest = URLRequest(url: components!.url!)
        urlRequest.addValue("application/json;charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        return urlRequest
    }
}
