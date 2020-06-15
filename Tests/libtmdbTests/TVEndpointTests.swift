//
//  File 2.swift
//  
//
//  Created by Mason Phillips on 6/13/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class TVEndpointTests: XCTestCase {
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    let onErr: ((Error) -> Void) = { e in print(e); XCTFail() }
    
    func testDetails() {
        let expectation = XCTestExpectation(description: "Expects a details response")
        
        api.tvDetails(1411).asObservable().subscribe(onNext: { response in
            print(response.name)
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
}
