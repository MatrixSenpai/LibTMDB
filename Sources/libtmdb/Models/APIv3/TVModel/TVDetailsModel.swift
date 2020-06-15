//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct TVDetailsModel: Decodable {
    public let backdrop_path: String?
    public let created_by: Array<CreatedBy>
    public let episode_run_time: Array<Int>
    public let first_air_date: String
    public let genres: Array<Genre>
    public let homepage: String
    public let id: Int
    public let in_production: Bool
    public let languages: Array<String>
    public let last_air_date: String
    public let last_episode_to_air: LastEpisode
    public let name: String
    public let networks: Array<Network>
    public let number_of_episodes: Int
    public let number_of_seasons: Int
    public let origin_country: Array<String>
    public let original_language: String
    public let original_name: String
    public let overview: String
    public let popularity: Float
    public let poster_path: String?
    public let production_companies: Array<ProductionCompany>
    public let seasons: Array<Season>
    public let status: String
    public let type: String
    public let vote_average: Float
    public let vote_count: Int
    
//    public let next_episode_to_air:
    
    public struct CreatedBy: Decodable {
        public let id: Int
        public let credit_id: String
        public let name: String
        public let gender: Int?
        public let profile_path: String?
    }
    
    public struct Genre: Decodable {
        public let id: Int
        public let name: String
    }
    
    public struct LastEpisode: Decodable {
        public let air_date: String?
        public let episode_number: Int
        public let id: Int
        public let name: String
        public let overview: String
        public let production_code: String
        public let season_number: Int
        public let show_id: Int
        public let still_path: String
        public let vote_average: Float
        public let vote_count: Int
    }
    
    public struct Network: Decodable {
        public let name: String
        public let id: Int
        public let logo_path: String
        public let origin_country: String
    }
    
    public struct ProductionCompany: Decodable {
        public let id: Int
        public let logo_path: String?
        public let name: String
        public let origin_country: String
    }
    
    public struct Season: Decodable {
        public let air_date: String?
        public let episode_count: Int
        public let id: Int
        public let name: String
        public let overview: String
        public let poster_path: String
        public let season_number: Int
    }
}
