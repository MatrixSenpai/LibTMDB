//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

public struct MovieAlternativeTitleModel: Decodable {
    public let id: Int
    public let titles: [AlternativeTitle]
    
    public struct AlternativeTitle: Decodable {
        public let iso_3166_1: String
        public let title: String
        public let type: String
    }
}
