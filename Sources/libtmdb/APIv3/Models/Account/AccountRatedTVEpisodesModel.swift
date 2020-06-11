//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation

public typealias AccountRatedTVEpisodesWrappedModel = APIResponse<AccountRatedTVEpisodesModel>
public struct AccountRatedTVEpisodesModel: Decodable {
    public let air_date: String
    public let episode_number: Int
    public let id: Int
    public let name: String
    public let overview: String
    public let production_code: String?
    public let season_number: Int
    public let show_id: Int
    public let still_path: String?
    public let vote_average: Float
    public let vote_count: Int
    public let rating: Int
}
