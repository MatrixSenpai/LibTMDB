//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation

struct CompanySearch: APIRequest {
    typealias Response = APIResponse<CompanySearchResult>
    
    var endpoint: String { "/search/company" }
    var parameters: Dictionary<String, String> {
        return [
            "query": query,
            "page": "\(page)"
        ]
    }
    
    var query: String
    var page: Int
}

