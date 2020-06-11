//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

struct MultiSearch: APIRequest {
    typealias Response = APIResponse<MultiSearchResult>
    
    var endpoint: String { "/search/multi" }
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
    
    let language: String?
    let query: String
    let page: Int
    let adult: Bool?
    let region: String?
}
