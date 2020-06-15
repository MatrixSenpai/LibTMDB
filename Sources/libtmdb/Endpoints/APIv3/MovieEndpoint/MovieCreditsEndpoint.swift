//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct MovieCreditsEndpoint: APIRequest {
    typealias Response = MovieCreditsModel
    
    var endpoint: String { "/movie/\(id)/credits" }
    var parameters: Dictionary<String, String> { [:] }
    
    let id: Int
}

public extension API {
    func movieCredits(_ id: Int) -> Single<MovieCreditsModel> {
        return _fetch(MovieCreditsEndpoint(id: id))
    }
}
