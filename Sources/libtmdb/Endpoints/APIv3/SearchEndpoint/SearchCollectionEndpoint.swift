//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct SearchCollectionEndpoint: APIRequest {
    typealias Response = PagedSearchCollectionModel
    
    var endpoint: String { "/search/collection" }
    var parameters: Dictionary<String, String> {
        var dict = [
            "query": query,
            "page": "\(page)"
        ]
        
        if let language = language {
            dict["language"] = language
        }
        
        return dict
    }
    
    let language: String?
    let query: String
    let page: Int
}

public extension API {
    func searchCollections(_ query: String, page: Int = 1, language: String? = nil) -> Single<PagedSearchCollectionModel> {
        return _fetch(SearchCollectionEndpoint(language: language, query: query, page: page))
    }
}
