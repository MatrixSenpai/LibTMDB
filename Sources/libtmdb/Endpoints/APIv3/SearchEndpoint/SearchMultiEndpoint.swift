//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchMultiEndpoint: APIRequest {
    typealias Response = PagedSearchMultiModel
    
    var endpoint: String { "/search/multi" }
    var parameters: Dictionary<String, String> {
        var dict = [
            "query": query,
            "page": "\(page)"
        ]
        
        if let language = language {
            dict["language"] = language
        }
        
        if let include_adult = include_adult {
            dict["include_adult"] = include_adult ? "true" : "false"
        }
        
        if let region = region {
            dict["region"] = region
        }
        
        return dict
    }
    
    let language: String?
    let query: String
    let page: Int
    let include_adult: Bool?
    let region: String?
}

public extension API {
    func searchMulti(_ query: String, page: Int = 1, language: String? = nil, adult: Bool? = nil, region: String? = nil) -> Single<PagedSearchMultiModel> {
        return _fetch(SearchMultiEndpoint(language: language, query: query, page: page, include_adult: adult, region: region))
    }
}
