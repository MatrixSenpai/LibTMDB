//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/14/20.
//

import Foundation
import RxSwift

struct PeopleCombinedCreditsEndpoint: APIRequest {
    typealias Response = PeopleCombinedCreditsModel
    
    var endpoint: String { "/person/\(id)/combined_credits" }
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
    func peopleCombinedCredits(_ id: Int, language: String? = nil) -> Single<PeopleCombinedCreditsModel> {
        return _fetch(PeopleCombinedCreditsEndpoint(id: id, language: language))
    }
}
