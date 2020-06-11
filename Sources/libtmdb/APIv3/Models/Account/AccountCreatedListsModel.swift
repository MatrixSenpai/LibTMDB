//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation

public typealias AccountCreatedListsWrappedModel = APIResponse<AccountCreatedListsModel>
public struct AccountCreatedListsModel: Decodable {
    public let description: String
    public let favorite_count: Int
    public let id: Int
    public let item_count: Int
    public let iso_629_1: String
    public let list_type: String
    public let name: String
    public let poster_path: String?
}
