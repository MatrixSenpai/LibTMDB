//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct MovieAlternateTitlesModel: Decodable {
    public let id: Int
    public let titles: Array<Title>
    
    public struct Title: Decodable {
        public let iso_3166_1: String
        public let title: String
        public let type: String
    }
}
