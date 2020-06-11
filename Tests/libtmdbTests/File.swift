//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class CertificationTests: XCTestCase {
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    let onErr: ((Error) -> Void) = { e in print(e); XCTFail() }
    
    func testMovieCertifications() {
        let expectation = XCTestExpectation(description: "Expects a list of certifications")
        
        api.getMovieCertifications().asObservable().subscribe(onNext: { response in
            XCTAssert(response.certifications.US.count > 0)
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testTVShowCertifications() {
        let expectation = XCTestExpectation(description: "Expects a list of certifications")
        
        api.getTVShowCertifications().asObservable().subscribe(onNext: { response in
            XCTAssert(response.certifications.US.count > 0)
            expectation.fulfill()
        }, onError: onErr).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
}
