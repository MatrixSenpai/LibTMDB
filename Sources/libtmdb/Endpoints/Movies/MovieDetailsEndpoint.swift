//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

struct MovieDetailsSearch: APIRequest {
    typealias Response = MovieDetailsModel
    
    var endpoint: String { "/movie/\(id)" }
    var parameters: Dictionary<String, String> {
        var dict = Dictionary<String, String>()
        
        if let language = language {
            dict["language"] = language
        }
        
        return dict
    }
    
    var id: Int
    var language: String?
    
    init(id: Int, language: String?) {
        self.id = id
        self.language = language
    }
}
