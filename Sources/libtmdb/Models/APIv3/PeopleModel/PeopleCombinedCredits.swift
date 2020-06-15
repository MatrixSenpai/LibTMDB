//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct PeopleCombinedCreditsModel: Decodable {
    public let id: Int
    public let cast: Array<Cast>
    public let crew: Array<Crew>
    
    public struct Cast: Decodable {
        public let id: Int
        public let original_language: String!
        public let episode_count: Int?
        public let overview: String!
        public let origin_country: Array<String>!
        public let original_name: String!
        public let genre_ids: Array<Int>!
        public let name: String!
        public let media_type: String!
        public let poster_path: String?
        public let first_air_date: String!
        public let vote_average: Float!
        public let vote_count: Int!
        public let character: String!
        public let backdrop_path: String?
        public let popularity: Float!
        public let credit_id: String!
        public let original_title: String!
        public let video: Bool!
        public let release_date: String!
        public let title: String!
        public let adult: Bool!
    }
    
    public struct Crew: Decodable {
        public let id: Int
        public let department: String!
        public let original_language: String!
        public let episode_count: Int!
        public let job: String!
        public let overview: String!
        public let origin_country: Array<String>!
        public let original_name: String!
        public let vote_count: Int!
        public let name: String!
        public let media_type: String!
        public let popularity: Float!
        public let credit_id: String!
        public let backdrop_path: String?
        public let first_air_date: String!
        public let vote_average: Float!
        public let genre_ids: Array<Int>!
        public let poster_path: String?
        public let original_title: String!
        public let video: Bool!
        public let title: String!
        public let adult: Bool!
        public let release_date: String!
    }
}
