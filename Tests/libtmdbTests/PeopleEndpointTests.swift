//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/14/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class PeopleEndpointTests: XCTestCase {
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    let onErr: ((Error) -> Void) = { e in print(e); XCTFail() }
    
    func testCombinedCredits() {
        let expectation = XCTestExpectation(description: "Expects a combined credits response")
        
        api.peopleCombinedCredits(500).asObservable().subscribe(onNext: { response in
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 1.0)
    }
}
