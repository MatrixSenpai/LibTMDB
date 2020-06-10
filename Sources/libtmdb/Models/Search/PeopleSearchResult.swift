//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public struct PeopleSearchResult: Decodable {
    public let profile_path: String?
    public let adult: Bool
    public let id: Int
    public let name: String
    public let popularity: Float
    public let known_for_department: String
    
    public let known_for: [KnownForType]
        
    public enum KnownForType: Decodable {
        case movie(item: MovieSearchResult)
        case show(item: TVShowSearchResult)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let kf = try? container.decode(MovieSearchResult.self) {
                self = .movie(item: kf)
            } else if let kf = try? container.decode(TVShowSearchResult.self) {
                self = .show(item: kf)
            } else {
                throw DecodingError.dataCorruptedError(in: container, debugDescription: "Could not decode known for items")
            }
        }
    }
}
