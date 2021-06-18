import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LinodeKitAccountTests.allTests),
        testCase(LinodeKitUserTests.allTests),
    ]
}
#endif
