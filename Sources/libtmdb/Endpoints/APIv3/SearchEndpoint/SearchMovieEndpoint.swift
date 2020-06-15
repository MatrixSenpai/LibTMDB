//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchMovieEndpoint: APIRequest {
    typealias Response = PagedSearchMovieModel
    
    var endpoint: String { "/search/movie" }
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
        
        if let year = year {
            dict["year"] = "\(year)"
        }
        
        if let primary_release_year = primary_release_year {
            dict["primary_release_year"] = "\(primary_release_year)"
        }
        
        return dict
    }
    
    let language: String?
    let query: String
    let page: Int
    let include_adult: Bool?
    let region: String?
    let year: Int?
    let primary_release_year: Int?
}

public extension API {
    func searchMovie(_ query: String, page: Int = 1, language: String? = nil, adult: Bool? = nil, region: String? = nil, year: Int? = nil, released: Int? = nil) -> Single<PagedSearchMovieModel> {
        return _fetch(SearchMovieEndpoint(language: language, query: query, page: page, include_adult: adult, region: region, year: year, primary_release_year: released))
    }
}
