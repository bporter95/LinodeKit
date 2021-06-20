import XCTest
@testable import LinodeKit

final class LinodeTests: BaseLinodeKitTest {
    
    func testLinodeList() {
        executedSucceeded(endpoint: .LinodeList) { res in
            if let linodes = res as? PagedResponse<[LinodeModel]>, let linode = linodes.data.first {
                Settings.set(key: .linodeId, value: linode.id)
            }
        }
    }
    
    func testLinodeView() {
        let id = (Settings.get(key: .linodeId) as? Int) ?? 0
        executedSucceeded(endpoint: .LinodeView(id:id))
        Settings.clear()
    }

    static var allTests = [
        ("testLinodeList", testLinodeList),
        ("testLinodeView", testLinodeView)
    ]
}
