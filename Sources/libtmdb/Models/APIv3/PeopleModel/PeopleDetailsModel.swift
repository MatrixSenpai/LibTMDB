//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct PeopleDetailsModel: Decodable {
    public let birthday: String?
    public let known_for_department: String
    public let deathday: String?
    public let id: Int
    public let name: String
    public let also_known_as: Array<String>
    public let gender: Int
    public let biography: String
    public let popularity: Float
    public let place_of_birth: String?
    public let profile_path: String?
    public let adult: Bool
    public let imdb_id: String
    public let homepage: String?
}
