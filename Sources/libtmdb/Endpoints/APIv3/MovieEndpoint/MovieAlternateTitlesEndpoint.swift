//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct MovieAlternateTitlesEndpoint: APIRequest {
    typealias Response = MovieAlternateTitlesModel
    
    var endpoint: String { "/movie/\(id)/alternative_titles" }
    var parameters: Dictionary<String, String> {
        if let country = country {
            return ["country": country]
        } else {
            return [:]
        }
    }
    
    let id: Int
    let country: String?
}

public extension API {
    func movieAlternativeTitles(_ id: Int, country: String? = nil) -> Single<MovieAlternateTitlesModel> {
        return _fetch(MovieAlternateTitlesEndpoint(id: id, country: country))
    }
}
