import XCTest
@testable import fs_ios_services

final class fs_ios_servicesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(fs_ios_services().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
