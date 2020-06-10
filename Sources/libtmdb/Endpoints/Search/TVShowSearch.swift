//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation
import RxSwift

struct TVShowSearchRequest: APIRequest {
    typealias Response = APIResponse<TVShowSearchResult>
        
    var endpoint: String { "/search/tv" }
    var parameters: Dictionary<String, String> {
        var dict = [
            "query": query,
            "page": "\(page)"
        ]
        
        if let language = language {
            dict["language"] = language
        }
        
        if let adult = adult {
            dict["include_adult"] = adult ? "true" : "false"
        }
        
        if let aired = aired {
            dict["first_air_date_year"] = "\(aired)"
        }
        
        return dict
    }
    
    var language: String?
    var page: Int
    var query: String
    var adult: Bool?
    var aired: Int?
}
