import XCTest
@testable import LinodeKit

final class UserTests: BaseLinodeKitTest {
    
    func testUserList() {
        executedSucceeded(endpoint: .UserList) { res in
        if let users = res as? PagedResponse<[UserModel]>, let user = users.data.first {
            Settings.set(key: .username, value: user.username)
        }
    }
    }
    
    func testUserView() {
        let username = (Settings.get(key: .username) as? String) ?? ""
        executedSucceeded(endpoint: .UserView(username:username))
        Settings.clear()
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
