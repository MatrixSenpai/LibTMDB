//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchKeywordEndpoint: APIRequest {
    typealias Response = PagedSearchKeywordModel
    
    var endpoint: String { "/search/keyword" }
    var parameters: Dictionary<String, String> {
        return [
            "query": query,
            "page": "\(page)"
        ]
    }
    
    let query: String
    let page: Int
}

public extension API {
    func searchKeyword(_ query: String, page: Int = 1) -> Single<PagedSearchKeywordModel> {
        return _fetch(SearchKeywordEndpoint(query: query, page: page))
    }
}
