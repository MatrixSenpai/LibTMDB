//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct TVSeasonsDetailsModel: Decodable {
    public let _id: String
    public let air_date: String
    public let episodes: Array<Episode>
    public let name: String
    public let overview: String
    public let id: Int
    public let poster_path: String?
    public let season_number: Int
    
    public struct Episode: Decodable {
        public let air_date: String
        public let crew: Array<Crew>
        public let episode_number: Int
        public let guest_stars: Array<GuestStar>
        public let name: String
        public let overview: String
        public let id: Int
        public let production_code: String?
        public let season_number: Int
        public let still_path: String?
        public let vote_average: Float
        public let vote_count: Int
        
        public struct Crew: Decodable {
            public let id: Int
            public let credit_id: String
            public let name: String
            public let department: String
            public let job: String
            public let profile_path: String?
        }

        public struct GuestStar: Decodable {
            public let id: Int
            public let name: String
            public let credit_id: String
            public let character: String
            public let order: Int
            public let profile_path: String?
        }
    }
}
