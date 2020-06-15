//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct MovieDetailsModel: Decodable {
    public let adult: Bool
    public let backdrop_path: String?
    public let budget: Int
    public let genres: Array<Genre>
    public let homepage: String?
    public let id: Int
    public let imdb_id: String?
    public let original_language: String
    public let original_title: String
    public let overview: String?
    public let popularity: Float
    public let poster_path: String?
    public let production_companies: Array<Company>
    public let status: Status
    public let tagline: String?
    public let title: String
    public let video: Bool
    public let vote_average: Float
    public let vote_count: Int
    
    public struct Genre: Decodable {
        public let id: Int
        public let name: String
    }
    
    public struct Company: Decodable {
        public let iso_3166_1: String?
        public let name: String
    }
    
    public enum Status: String, Decodable {
        case rumored = "Rumored"
        case planned = "Planned"
        case in_production = "In Production"
        case post_production = "Post Production"
        case released = "Released"
        case canceled = "Canceled"
    }
    
//    public let belongs_to_collection:
}
