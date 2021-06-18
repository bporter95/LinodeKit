import XCTest
@testable import LinodeKit

final class LinodeKitAccountTests: BaseLinodeKitTest {
    
    func testAccountView() {
        executedSucceeded(endpoint: .AccountView)
    }

    static var allTests = [
        ("testAccountView", testAccountView)
    ]
}
