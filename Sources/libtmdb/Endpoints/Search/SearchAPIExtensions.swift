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
     Search for a company
     
     - parameter query: The text to search for
     - parameter page: Specify which page to query
     */
    @available(iOS, introduced: 1.0)
    func searchCompany(query: String, page: Int = 1) -> Single<APIResponse<CompanySearchResult>> {
        return _fetch(CompanySearch(query: query, page: page))
    }
    
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
        return _fetch(MovieSearch(language: language, query: query, page: page, adult: adult, year: year, released: released))
    }
    
    /**
     Search multiple (People, shows, and movies)
     
     - parameter query: The text to search for
     - parameter page: Specify which page to query
     - parameter language: Pass an ISO-639-1 value to display translated data
     - parameter adult: Whether to include adult (pornography) content
     - parameter region: Specify an ISO 3166-1 code to filter release dates
     */
    @available(iOS, introduced: 1.0)
    func searchMulti(query: String, page: Int = 1, language: String? = nil, adult: Bool? = nil, region: String? = nil) -> Single<MultiSearchResult> {
        return _fetch(MultiSearch(language: language, query: query, page: page, adult: adult, region: region))
    }
    
    /**
     Search for people
     
     - parameter query: The text to search for
     - parameter page: Specify which page to query
     - parameter language: Pass an ISO-639-1 value to display translated data
     - parameter adult: Whether to include adult (pornography) content
     - parameter region: Specify an ISO 3166-1 code to filter release dates
     */
    @available(iOS, introduced: 1.0)
    func searchPeople(query: String, page: Int = 1, language: String? = nil, adult: Bool? = nil, region: String? = nil) -> Single<APIResponse<PeopleSearchResult>> {
        return _fetch(PeopleSearch(language: language, query: query, page: page, adult: adult, region: region))
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
        return _fetch(TVShowSearchRequest(language: language, page: page, query: query, adult: adult, aired: aired))
    }
}
