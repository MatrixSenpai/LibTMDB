//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

public struct MovieCreditsModel: Decodable {
    public let id: Int
    
    public let cast: [Cast]
    public let crew: [Crew]
    
    public struct Cast: Decodable {
        public let cast_id: Int
        public let character: String
        public let credit_id: String
        public let gender: Int?
        public let id: Int
        public let name: String
        public let order: Int
        public let profile_path: String?
    }
    
    public struct Crew: Decodable {
        public let credit_id: String
        public let department: String
        public let gender: Int?
        public let id: Int
        public let job: String
        public let name: String
        public let profile_path: String?
    }
}
