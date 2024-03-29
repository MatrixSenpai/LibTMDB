//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public typealias PagedSearchMovieModel = PagedResponse<SearchMovieModel>
public struct SearchMovieModel: Decodable {
    public let poster_path: String?
    public let adult: Bool
    public let overview: String
    public let release_date: String
    public let genre_ids: [Int]
    public let id: Int
    public let original_title: String
    public let original_language: String
    public let title: String
    public let backdrop_path: String?
    public let popularity: Float
    public let vote_count: Int
    public let video: Bool
    public let vote_average: Float
}
