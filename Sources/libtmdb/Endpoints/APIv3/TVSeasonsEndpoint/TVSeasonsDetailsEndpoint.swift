//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVSeasonsDetailsEndpoint: APIRequest {
    typealias Response = TVSeasonsDetailsModel
    
    var endpoint: String { "/tv/\(tvId)/season/\(seasonNumber)" }
    var parameters: Dictionary<String, String> {
        if let language = language {
            return ["language": language]
        } else {
            return [:]
        }
    }
    
    let tvId: Int
    let seasonNumber: Int
    let language: String?
}

public extension API {
    func tvSeasonDetails(_ id: Int, season: Int, language: String? = nil) -> Single<TVSeasonsDetailsModel> {
        return _fetch(TVSeasonsDetailsEndpoint(tvId: id, seasonNumber: season, language: language))
    }
}
