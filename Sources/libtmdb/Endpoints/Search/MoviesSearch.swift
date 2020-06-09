//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import Foundation
import RxSwift

struct MovieSearch: APIRequest {
    typealias Response = APIResponse<MovieSearchResult>
    
    var endpoint: String { "/search/movie" }
    var parameters: Dictionary<String, String> {
        var dict = [
            "query": query,
            "page" : "\(page)"
        ]
        
        if let language = language {
            dict["language"] = language
        }
        
        if let adult = adult {
            dict["adult"] = (adult) ? "true" : "false"
        }
        
        if let region = region {
            dict["region"] = region
        }
        
        if let year = year {
            dict["year"] = "\(year)"
        }
        
        if let released = released {
            dict["primary_release_year"] = "\(released)"
        }
        
        return dict
    }

    var language: String?
    var query   : String
    var page    : Int
    var adult   : Bool?
    var region  : String?
    var year    : Int?
    var released: Int?

    init(qu: String, pa: Int, la: String?, ad: Bool?, re: String?, ye: Int?, rl: Int?) {
        self.query = qu
        self.page = pa
        self.language = la
        self.adult = ad
        self.region = re
        self.year = ye
        self.released = rl
    }
}
