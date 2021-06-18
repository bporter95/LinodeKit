import XCTest
@testable import LinodeKit

final class LinodeKitUserTests: BaseLinodeKitTest {
    
    func testUserList() {
        executedSucceeded(endpoint: .UserList)
    }
    
    func testUserView() {
        executedSucceeded(endpoint: .UserView)
    }
    
    func testUserCreate_FailedWithError() {
        executedAndFailed(endpoint: .UserCreate,expectedError: APIError(errors: [LinodeKitError(reason: "Your OAuth token is not authorized to use this endpoint.")]))
    }

    static var allTests = [
        ("testUserList", testUserList),
        ("testUserView", testUserView),
        ("testUserCreate_FailedWithError", testUserCreate_FailedWithError),
    ]
}
