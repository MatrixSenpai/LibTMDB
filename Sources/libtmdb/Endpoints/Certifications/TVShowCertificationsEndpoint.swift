//
//  TVShowCertificationsEndpoint.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation
import RxSwift

struct TVShowCertificationsEndpoint: APIRequest {
    typealias Response = TVShowCertificationsModel
    
    var endpoint: String { "/certification/tv/list" }
    var parameters: Dictionary<String, String> = [:]
}

public extension API {
    /**
     Get an up-to-date list of the officially supported TV show certifications (ratings) on TMDb
     
     */
    @available(iOS, introduced: 1.0.0)
    func getTVShowCertifications() -> Single<TVShowCertificationsModel> {
        return _fetch(TVShowCertificationsEndpoint())
    }
}
