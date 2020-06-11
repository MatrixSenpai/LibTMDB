//
//  MovieCertificationsEndpoint.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation
import RxSwift

struct MovieCertificationsEndpoint: APIRequest {
    typealias Response = MovieCertificationModel
    
    var endpoint: String { "/certification/movie/list" }
    var parameters: Dictionary<String, String> = [:]
}

public extension API {
    /**
     Get an up-to-date list of the officially supported movie certifications (ratings) on TMDb
     
     */
    @available(iOS, introduced: 1.0.0)
    func getMovieCertifications() -> Single<MovieCertificationModel> {
        return _fetch(MovieCertificationsEndpoint())
    }
}
