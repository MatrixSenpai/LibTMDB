//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public typealias PagedSearchCompanyModel = PagedResponse<SearchCompanyModel>
public struct SearchCompanyModel: Decodable {
    public let id: Int
    public let logo_path: String?
    public let name: String
}
