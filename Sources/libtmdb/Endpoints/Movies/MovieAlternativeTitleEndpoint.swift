//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

struct MovieAlternativeTitleEndpoint: APIRequest {
    typealias Response = MovieAlternativeTitleModel
    
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
