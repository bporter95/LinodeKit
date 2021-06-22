//
//  LinodeTypeTests.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import XCTest
@testable import LinodeKit

final class LinodeTypeTests: BaseLinodeKitTest {
    
    func testLinodeTypeList() {
        executedSucceeded(endpoint: .LinodeTypeList) { res in
            if let linodes = res as? PagedResponse<[LinodeTypeModel]>, let linode = linodes.data.first {
                Settings.set(key: .id, value: linode.id)
            }
        }
    }
    
    func testLinodeTypeView() {
        let id = (Settings.get(key: .id) as? String) ?? ""
        executedSucceeded(endpoint: .LinodeTypeView(id:id))
        Settings.clear()
    }

    static var allTests = [
        ("testLinodeTypeList", testLinodeTypeList),
        ("testLinodeTypeView", testLinodeTypeView)
    ]
}
