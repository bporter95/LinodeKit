import XCTest
@testable import LinodeKit

final class UserTests: BaseLinodeKitTest {
    
    func testUserList() {
        executedSucceeded(endpoint: .UserList)
    }
    
    func testUserView() {
        XCTAssert(!SeedUtil.username.isEmpty,"Must set username in SeedUtil")
        executedSucceeded(endpoint: .UserView)
    }
    
    func testUserCreate_FailedWithError() {
        XCTAssert(!SeedUtil.newUsername.isEmpty,"Must set newUsername in SeedUtil")
        XCTAssert(!SeedUtil.newEmail.isEmpty,"Must set newEmail in SeedUtil")
        executedAndFailed(endpoint: .UserCreate,expectedError: APIError(errors: [LinodeKitError(reason: "Your OAuth token is not authorized to use this endpoint.")]))
    }

    static var allTests = [
        ("testUserList", testUserList),
        ("testUserView", testUserView),
        ("testUserCreate_FailedWithError", testUserCreate_FailedWithError),
    ]
}
