//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation
import RxSwift

public extension API {
    
    /**
     Search for movies
     
     - parameter query: The text to search for
     - parameter page: Specify which page to query
     - parameter language: Pass an ISO-639-1 value to display translated data
     - parameter adult: Whether to include adult (pornography) content
     - parameter region: Specify an ISO 3166-1 code to filter release dates
     - parameter year: A year to search
     - parameter release: The initial release year to search
     */
    @available(iOS, introduced: 1.0)
    func searchMovie(query: String,
                     page: Int = 1,
                     language: String? = nil,
                     adult: Bool? = nil,
                     region: String? = nil,
                     year: Int? = nil,
                     released: Int? = nil) -> Single<APIResponse<MovieSearchResult>>
    {
        return _fetch(MovieSearch(qu: query, pa: page, la: language, ad: adult, re: region, ye: year, rl: released))
    }

    /**
     Search for TV shows
     
     - parameter query: The text to search for
     - parameter page: Specify which page to query
     - parameter language: Pass an ISO-639-1 value to display translated data
     - parameter adult: Whether to include adult (pornography) content
     - parameter aired: The initial release year to search
     */
    @available(iOS, introduced: 1.0)
    func searchTVShow(query: String, page: Int = 1, language: String? = nil, adult: Bool? = nil, aired: Int? = nil) -> Single<APIResponse<TVShowSearchResult>> {
        return _fetch(TVShowSearchRequest(qu: query, pa: page, la: language, ad: adult, ai: aired))
    }
}
