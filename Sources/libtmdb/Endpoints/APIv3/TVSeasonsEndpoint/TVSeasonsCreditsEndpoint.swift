//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVSeasonsCreditsEndpoint: APIRequest {
    typealias Response = TVSeasonsCreditsModel
    
    var endpoint: String { "/tv/\(tvId)/season/\(seasonNumber)/credits" }
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
    func tvSeasonCredits(_ id: Int, season: Int, language: String? = nil) -> Single<TVSeasonsCreditsModel> {
        return _fetch(TVSeasonsCreditsEndpoint(tvId: id, seasonNumber: season, language: language))
    }
}
