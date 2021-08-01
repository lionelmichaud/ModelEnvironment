import XCTest
@testable import ModelEnvironment

final class ModelEnvironmentTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ModelEnvironment().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
