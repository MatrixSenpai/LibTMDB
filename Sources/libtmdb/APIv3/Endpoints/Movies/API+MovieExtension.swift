//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation
import RxSwift

public extension API {
    
    /**
     Get the primary info about a movie
     
     - parameter id: The id of the movie
     - parameter language: Pass an ISO-639-1 value to display translated data
     */
    func getMovieDetails(id: Int, language: String) -> Single<MovieDetailsModel> {
        return _fetch(MovieDetailsSearch(id: id, language: language))
    }
    
    /**
     
     */
    func getMovieAccountState() -> Void {
        // TODO: - Implement
    }
    
    /**
     Get all the alternative titles for a movie
     
     - parameter id: The id of the movie
     - parameter country: The release country
     */
    func getMovieAlternativeTitles(id: Int, country: String? = nil) -> Single<MovieAlternativeTitleModel> {
        return _fetch(MovieAlternativeTitleEndpoint(id: id, country: country))
    }
}
