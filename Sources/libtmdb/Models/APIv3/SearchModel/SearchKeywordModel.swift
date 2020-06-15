//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public typealias PagedSearchKeywordModel = PagedResponse<SearchKeywordModel>
public struct SearchKeywordModel: Decodable {
    public let id: Int
    public let name: String
}
