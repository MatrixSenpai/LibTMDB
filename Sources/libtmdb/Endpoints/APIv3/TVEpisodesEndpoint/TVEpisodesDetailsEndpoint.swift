//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import Foundation
import RxSwift

struct TVEpisodesDetailsEndpoint: APIRequest {
    typealias Response = TVEpisodesDetailsModel
    
    var endpoint: String { "/tv/\(tvId)/season/\(seasonNumber)/episode/\(episodeNumber)" }
    var parameters: Dictionary<String, String> { [:] }
    
    let tvId: Int
    let seasonNumber: Int
    let episodeNumber: Int
}

public extension API {
    func tvEpisodeDetails(_ id: Int, season: Int, episode: Int) -> Single<TVEpisodesDetailsModel> {
        return _fetch(TVEpisodesDetailsEndpoint(tvId: id, seasonNumber: season, episodeNumber: episode))
    }
}
