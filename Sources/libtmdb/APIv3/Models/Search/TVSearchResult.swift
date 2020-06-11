//
//  TVShowSearchResult.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public struct TVShowSearchResult: Decodable {
    public let poster_path: String?
    public let id: Int
    public let backdrop_path: String?
    public let vote_average: Float
    public let overview: String
    public let first_air_date: String
    public let origin_country: [String]
    public let genre_ids: [Int]
    public let original_language: String
    public let vote_count: Int
    public let name: String
    public let original_name: String
    
    public let popularity: Float?
    public let media_type: String?
}