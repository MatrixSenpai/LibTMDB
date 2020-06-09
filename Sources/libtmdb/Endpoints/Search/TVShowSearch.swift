//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation
import RxSwift

struct TVShowSearchRequest: APIRequest {
    typealias Response = APIResponse<TVShowSearchResult>
        
    var endpoint: String { "/search/tv" }
    var parameters: Dictionary<String, String> {
        return Dictionary<String, String>()
    }
    
    var language: String?
    var page: Int
    var query: String
    var adult: Bool?
    var aired: Int?
    
    init(qu: String, pa: Int, la: String?, ad: Bool?, ai: Int?) {
        query = qu
        page = pa
        language = la
        adult = ad
        aired = ai
    }
}
