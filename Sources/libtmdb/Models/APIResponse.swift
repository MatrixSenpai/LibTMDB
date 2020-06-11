//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

public class APIResponse<T: Decodable>: Decodable {
    public let page   : Int
    public let results: Int
    public let pages  : Int
    
    public let data: [T]
    
    enum CodingKeys: String, CodingKey {
        case page
        case results = "total_results"
        case pages   = "total_pages"
        case data    = "results"
    }
}
