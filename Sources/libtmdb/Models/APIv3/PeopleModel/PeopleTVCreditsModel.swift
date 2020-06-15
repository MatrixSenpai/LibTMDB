//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct PeopleTVCreditsModel: Decodable {
    public let id: Int
    public let cast: Array<Cast>
    public let crew: Array<Crew>
    
    public struct Cast: Decodable {
        public let character: String
        public let credit_id: String
        public let release_date: String
        public let vote_count: Int
        public let video: Bool
        public let adult: Bool
        public let vote_average: Float
        public let title: String
        public let genre_ids: Array<Int>
        public let original_language: String
        public let original_title: String
        public let popularity: Float
        public let id: Int
        public let backdrop_path: String?
        public let overview: String
        public let poster_path: String?
    }
    
    public struct Crew: Decodable {
        public let id: Int
        public let department: String
        public let original_language: String
        public let original_title: String
        public let job: String
        public let overview: String
        public let vote_count: Int
        public let video: Bool
        public let poster_path: String?
        public let backdrop_path: String?
        public let title: String
        public let popularity: Int
        public let genre_ids: Array<Int>
        public let vote_average: Float
        public let adult: Bool
        public let release_date: String
        public let credit_id: String
    }
}
