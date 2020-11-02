import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(fs_ios_servicesTests.allTests),
    ]
}
#endif
