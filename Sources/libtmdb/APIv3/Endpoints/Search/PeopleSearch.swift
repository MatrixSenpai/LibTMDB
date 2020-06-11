//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

struct PeopleSearch: APIRequest {
    typealias Response = APIResponse<PeopleSearchResult>
    
    var endpoint: String { "/search/person" }
    var parameters: Dictionary<String, String> {
        var dict = [
            "query": query,
            "page" : "\(page)"
        ]
        
        if let language = language {
            dict["language"] = language
        }
        
        if let adult = adult {
            dict["include_adult"] = (adult) ? "true" : "false"
        }
        
        if let region = region {
            dict["region"] = region
        }

        return dict
    }
    
    var language: String?
    var query: String
    var page: Int
    var adult: Bool?
    var region: String?
}
