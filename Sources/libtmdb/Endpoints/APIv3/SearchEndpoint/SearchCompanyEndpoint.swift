//
//  SearchCompanyEndpoint.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchCompanyEndpoint: APIRequest {
    typealias Response = PagedSearchCompanyModel
    
    var endpoint: String { "/search/company" }
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
    func searchCompanies(_ query: String, page: Int = 1) -> Single<PagedSearchCompanyModel> {
        return _fetch(SearchCompanyEndpoint(query: query, page: page))
    }
}
