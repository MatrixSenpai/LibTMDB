//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/14/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class TVEpisodeEndpointTest: XCTestCase {
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    let onErr: ((Error) -> Void) = { e in print(e); XCTFail() }
    
    func testDetails() {
        let expectation = XCTestExpectation(description: "expects a tv episode details response")
        
        api.tvEpisodeDetails(1411, season: 1, episode: 1).asObservable().subscribe(onNext: { response in
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testCredits() {
        let expectation = XCTestExpectation(description: "expects a tv episode credits response")
        
        api.tvEpisodeCredits(1411, season: 1, episode: 1).asObservable().subscribe(onNext: { response in
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 1.0)
    }
}
