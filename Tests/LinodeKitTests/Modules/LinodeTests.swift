import XCTest
@testable import LinodeKit

final class LinodeTests: BaseLinodeKitTest {
    
    func testLinodeList() {
        executedSucceeded(endpoint: .LinodeList)
    }
    
    func testLinodeView() {
        XCTAssert(SeedUtil.linodeId > 0)
        executedSucceeded(endpoint: .LinodeView)
    }

    static var allTests = [
        ("testLinodeList", testLinodeList),
        ("testLinodeView", testLinodeView)
    ]
}
