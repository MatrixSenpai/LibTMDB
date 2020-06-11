//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

public struct MovieDetailsModel: Decodable {
    public let adult: Bool
    public let backdrop_path: String?
    public let budget: Int
    public let homepage: String?
    public let id: Int
    public let imdb_id: String?
    public let original_language: String
    public let original_title: String
    public let overview: String?
    public let popularity: Float
    public let poster_path: String?
    public let release_date: String
    public let revenue: Int
    public let runtime: Int?
    public let status: MovieStatus
    public let tagline: String?
    public let title: String
    public let video: Bool
    public let vote_average: Float
    public let vote_count: Int
    
    public enum MovieStatus: String, Decodable, CustomStringConvertible {
        case rumored, planned, released, canceled
        case production = "In Production"
        case post_prod  = "Post Production"
        
        public var description: String {
            return rawValue
        }
    }
    
    // TODO
//    public let belongs_to_collection:
//    public let genres:
//    public let production_companies:
//    public let production_countries:
//    public let spoken_languages:
}
