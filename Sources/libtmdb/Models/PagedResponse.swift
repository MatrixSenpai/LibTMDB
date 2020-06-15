//
//  PagedResponse.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation

public struct PagedResponse<T: Decodable>: Decodable {
    public let page: Int
    public let total_results: Int
    public let total_pages: Int
    
    public let results: Array<T>
}
