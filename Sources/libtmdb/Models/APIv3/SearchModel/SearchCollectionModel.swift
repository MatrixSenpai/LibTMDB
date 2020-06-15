//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public typealias PagedSearchCollectionModel = PagedResponse<SearchCollectionModel>
public struct SearchCollectionModel: Decodable {
    public let id: Int
    public let backdrop_path: String
    public let name: String
    public let poster_path: String?
}
