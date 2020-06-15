//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVDetailsEndpoint: APIRequest {
    typealias Response = TVDetailsModel
    
    var endpoint: String { "/tv/\(id)" }
    var parameters: Dictionary<String, String> {
        if let language = language {
            return ["language": language]
        } else {
            return [:]
        }
    }
    
    let id: Int
    let language: String?
}

public extension API {
    func tvDetails(_ id: Int, language: String? = nil) -> Single<TVDetailsModel> {
        return _fetch(TVDetailsEndpoint(id: id, language: language))
    }
}
