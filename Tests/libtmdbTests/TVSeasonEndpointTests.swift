//
//  File 2.swift
//  
//
//  Created by Mason Phillips on 6/14/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class TVSeasonEndpointTests: XCTestCase {
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    let onErr: ((Error) -> Void) = { e in print(e); XCTFail() }
    
    func testDetails() {
        let expectation = XCTestExpectation(description: "Expects a tv season response")
        
        api.tvSeasonDetails(1411, season: 1).asObservable().subscribe(onNext: { value in
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 1.0)
    }
}
