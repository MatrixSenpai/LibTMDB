//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVEpisodesCreditsEndpoint: APIRequest {
    typealias Response = TVEpisodesCreditsModel
    
    var endpoint: String { "/tv/\(tvId)/season/\(seasonNumber)/episode/\(episodeNumber)/credits" }
    var parameters: Dictionary<String, String> { [:] }
    
    let tvId: Int
    let seasonNumber: Int
    let episodeNumber: Int
}

public extension API {
    func tvEpisodeCredits(_ id: Int, season: Int, episode: Int) -> Single<TVEpisodesCreditsModel> {
        return _fetch(TVEpisodesCreditsEndpoint(tvId: id, seasonNumber: season, episodeNumber: episode))
    }
}
