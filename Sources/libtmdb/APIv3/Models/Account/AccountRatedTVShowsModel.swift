//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation

public typealias AccountRatedTVShowsWrappedModel = APIResponse<AccountRatedTVShowsModel>
public struct AccountRatedTVShowsModel: Decodable {
    public let backdrop_path: String?
    public let first_air_date: String
    public let genre_ids: [Int]
    public let id: Int
    public let original_language: String
    public let original_name: String
    public let overview: String
    public let origin_country: [String]
    public let poster_path: String?
    public let popularity: Float
    public let name: String
    public let vote_average: Int
    public let rating: Int
}
