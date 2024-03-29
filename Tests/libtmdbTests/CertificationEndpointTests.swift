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
}
