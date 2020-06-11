//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/11/20.
//

import Foundation
import RxSwift

struct AccountDetailsEndpoint: APIRequest {
    typealias Response = AccountDetailsModel
    
    var endpoint: String { "/account" }
    var parameters: Dictionary<String, String> {
        return ["session_id": sessionID]
    }
    
    let sessionID: String
}

public extension API {
    /**
     Get account details
     
     - parameter sessionID: The registered session ID
     */
    @available(iOS, introduced: 1.0.0)
    func getAccountDetails(sessionID: String) -> Single<AccountDetailsModel> {
        return _fetch(AccountDetailsEndpoint(sessionID: sessionID))
    }
}
