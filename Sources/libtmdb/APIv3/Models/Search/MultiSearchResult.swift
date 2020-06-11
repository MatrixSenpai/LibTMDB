//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public enum MultiSearchResult: Decodable {
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
