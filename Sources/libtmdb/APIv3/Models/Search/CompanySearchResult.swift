//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public struct CompanySearchResult: Decodable {
    public let id: Int
    public let logo_path: String?
    public let name: String
}
