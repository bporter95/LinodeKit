import XCTest
@testable import LinodeKit

final class AccountTests: BaseLinodeKitTest {
    
    func testAccountView() {
        executedSucceeded(endpoint: .AccountView)
    }

    static var allTests = [
        ("testAccountView", testAccountView)
    ]
}
