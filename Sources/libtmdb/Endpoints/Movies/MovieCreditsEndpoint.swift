//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

struct MovieCreditsEndpoint: APIRequest {
    typealias Response = MovieCreditsModel
    
    var endpoint: String { "/movie/\(id)/credits" }
    var parameters: Dictionary<String, String> {
        return [:]
    }
    
    let id: Int
}
