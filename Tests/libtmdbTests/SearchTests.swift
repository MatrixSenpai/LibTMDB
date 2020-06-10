//
//  SearchTests.swift
//  
//
//  Created by Mason Phillips on 6/9/20.
//

import XCTest
import RxSwift
@testable import libtmdb

final class SearchTests: XCTestCase {
    
    let api = API(API_KEY)
    let bag = DisposeBag()
    
    func testCompanies() {
        let expectation = XCTestExpectation(description: "Expects a company response")
        
        api.searchCompany(query: "Sony").asObservable().subscribe(onNext: { response in
            XCTAssert(response.results > 0)
            expectation.fulfill()
        }, onError: { error in
            print(error)
        }).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testMovies() {
        let expectation = XCTestExpectation(description: "Expects a movie response")
        
        api.searchMovie(query: "Avengers").asObservable().subscribe(onNext: { response in
            XCTAssert(response.results > 0)
            expectation.fulfill()
        }, onError: { error in
            print(error)
            XCTFail()
        }).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testMulti() {
        let expectation = XCTestExpectation(description: "Expects a movie response")
        
        api.searchMulti(query: "Tom").asObservable().subscribe(onNext: { response in
            XCTAssert(response.results > 0)
            expectation.fulfill()
        }, onError: { error in
            print(error)
            XCTFail()
        }).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testPeople() {
        let expectation = XCTestExpectation(description: "Expects a person response")
        
        api.searchPeople(query: "Josh Radnor").asObservable().subscribe(onNext: { response in
            XCTAssert(response.results > 0)
            expectation.fulfill()
        }, onError: { error in
            print(error)
            XCTFail()
        }).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
    
    func testTVShows() {
        let expectation = XCTestExpectation(description: "Expects a tv show response")
        
        api.searchTVShow(query: "How I Met Your Mother").asObservable().subscribe(onNext: { response in
            XCTAssert(response.results > 0)
            expectation.fulfill()
        }, onError: { error in
            print(error)
            XCTFail()
        }).disposed(by: bag)
        
        wait(for: [expectation], timeout: 5.0)
    }
}
