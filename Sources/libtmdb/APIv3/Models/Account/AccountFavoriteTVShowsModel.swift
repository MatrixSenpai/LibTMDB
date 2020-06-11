//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation

typealias AccountFavoriteTVShowsWrappedModel = APIResponse<AccountFavoriteTVShowsModel>
public struct AccountFavoriteTVShowsModel: Decodable {
    public let poster_path: String?
    public let popularity: Float
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
}
