//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVCreditsEndpoint: APIRequest {
    typealias Response = TVCreditsModel
    
    var endpoint: String { "/tv/\(id)/credits" }
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
    func tvCredits(_ id: Int, language: String? = nil) -> Single<TVCreditsModel> {
        return _fetch(TVCreditsEndpoint(id: id, language: language))
    }
}
