//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation

public struct AccountDetailsModel: Decodable {
    public let avatar: Gravatar
    public let id: Int
    public let iso_639_1: String
    public let iso_3166_1: String
    public let name: String
    public let include_adult: Bool
    public let username: String
    
    public struct Gravatar: Decodable {
        public let hash: String
    }
}
