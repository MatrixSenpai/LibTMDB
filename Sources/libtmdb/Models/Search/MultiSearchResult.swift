//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public struct MultiSearchResult: Decodable {
    public let page   : Int
    public let results: Int
    public let pages  : Int
    
    public let data: Array<MultiSearchResultType>

    public enum MultiSearchResultType: Decodable {
        case movie(item: MovieSearchResult)
        case show(item: TVShowSearchResult)
        case person(item: PeopleSearchResult)
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            
            if let rt = try? container.decode(MovieSearchResult.self) {
                self = .movie(item: rt)
            } else if let rt = try? container.decode(TVShowSearchResult.self) {
                self = .show(item: rt)
            } else if let rt = try? container.decode(PeopleSearchResult.self) {
                self = .person(item: rt)
            } else {
                throw DecodingError.dataCorruptedError(in: container, debugDescription: "Could not decode multi search item")
            }
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case page
        case results = "total_results"
        case pages   = "total_pages"
        case data    = "results"
    }
}
