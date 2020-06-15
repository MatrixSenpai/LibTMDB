//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public typealias PagedSearchMultiModel = PagedResponse<SearchMultiModel>
public enum SearchMultiModel: Decodable {
    case movie(item: Movie)
    case show(item: TVShow)
    case person(item: Person)
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        
        if let item = try? container.decode(Movie.self) {
            self = .movie(item: item)
        } else if let item = try? container.decode(TVShow.self) {
            self = .show(item: item)
        } else if let item = try? container.decode(Person.self) {
            self = .person(item: item)
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Could not decode type")
        }
    }
    
    public struct Movie: Decodable {
        public let poster_path: String?
        public let adult: Bool
        public let overview: String
        public let release_date: String
        public let genre_ids: [Int]
        public let id: Int
        public let original_title: String
        public let original_language: String
        public let media_type: String?
        public let title: String
        public let backdrop_path: String?
        public let popularity: Float?
        public let vote_count: Int
        public let video: Bool
        public let vote_average: Float
    }
    
    public struct TVShow: Decodable {
        public let poster_path: String?
        public let popularity: Float?
        public let id: Int
        public let overview: String
        public let backdrop_path: String?
        public let vote_average: Float
        public let media_type: String?
        public let first_air_date: String
        public let origin_country: [String]
        public let genre_ids: [Int]
        public let original_language: String
        public let vote_count: Int
        public let name: String
        public let original_name: String
    }
    
    public struct Person: Decodable {
        public let profile_path: String?
        public let adult: Bool
        public let id: Int
        public let known_for: Array<KnownForType>
        public let name: String
        public let popularity: Float
        public let known_for_department: String?
        
        public enum KnownForType: Decodable {
            case movie(item: Movie)
            case show(item: TVShow)
            
            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                
                if let item = try? container.decode(Movie.self) {
                    self = .movie(item: item)
                } else if let item = try? container.decode(TVShow.self) {
                    self = .show(item: item)
                } else {
                    throw DecodingError.dataCorruptedError(in: container, debugDescription: "Could not decode type")
                }
            }
        }
        
        public struct Movie: Decodable {
            public let poster_path: String?
            public let adult: Bool
            public let overview: String
            public let release_date: String
            public let genre_ids: [Int]
            public let id: Int
            public let original_title: String
            public let original_language: String
            public let media_type: String?
            public let title: String
            public let backdrop_path: String?
            public let popularity: Float?
            public let vote_count: Int
            public let video: Bool
            public let vote_average: Float
        }
        
        public struct TVShow: Decodable {
            public let poster_path: String?
            public let popularity: Float?
            public let id: Int
            public let overview: String
            public let backdrop_path: String?
            public let vote_average: Float
            public let media_type: String?
            public let first_air_date: String
            public let origin_country: [String]
            public let genre_ids: [Int]
            public let original_language: String
            public let vote_count: Int
            public let name: String
            public let original_name: String
        }
    }
}
