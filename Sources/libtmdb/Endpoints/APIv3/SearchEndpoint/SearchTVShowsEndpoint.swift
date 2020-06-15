//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchTVShowsEndpoint: APIRequest {
    typealias Response = PagedSearchTVShowsModel
    
    var endpoint: String { "/search/tv" }
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
        
        if let first_air_date_year = first_air_date_year {
            dict["first_air_date_year"] = "\(first_air_date_year)"
        }
        
        return dict
    }
    
    let language: String?
    let page: Int
    let query: String
    let include_adult: Bool?
    let first_air_date_year: Int?
}

public extension API {
    func searchTVShows(_ query: String, page: Int = 1, language: String? = nil, include_adult: Bool? = nil, aired: Int? = nil) -> Single<PagedSearchTVShowsModel> {
        return _fetch(SearchTVShowsEndpoint(language: language, page: page, query: query, include_adult: include_adult, first_air_date_year: aired))
    }
}
