//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct PeopleDetailsEndpoint: APIRequest {
    typealias Response = PeopleDetailsModel
    
    var endpoint: String { "/person/\(id)" }
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
    func peopleDetails(_ id: Int, language: String? = nil) -> Single<PeopleDetailsModel> {
        return _fetch(PeopleDetailsEndpoint(id: id, language: language))
    }
}
