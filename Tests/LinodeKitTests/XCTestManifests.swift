import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AccountTests.allTests),
        testCase(DomainRecordTests.allTests),
        testCase(DomainTests.allTests),
        testCase(ImageTests.allTests),
        testCase(EventTests.allTests),
        testCase(InvoiceTests.allTests),
        testCase(LinodeTests.allTests),
        testCase(PaymentTests.allTests),
        testCase(UserTests.allTests),
    ]
}
#endif
