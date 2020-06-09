import XCTest
@testable import libtmdb

final class libtmdbTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(libtmdb().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
