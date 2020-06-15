//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct MovieDetailsEndpoint: APIRequest {
    typealias Response = MovieDetailsModel
    
    var endpoint: String { "/movie/\(id)" }
    var parameters: Dictionary<String, String> {
        if let language = language {
            return ["language" : language]
        } else {
            return [:]
        }
    }
    
    let language: String?
    let id: Int
}

public extension API {
    func movieDetails(_ id: Int, language: String? = nil) -> Single<MovieDetailsModel> {
        return _fetch(MovieDetailsEndpoint(language: language, id: id))
    }
}
