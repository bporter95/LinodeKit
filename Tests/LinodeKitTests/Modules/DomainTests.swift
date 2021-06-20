//
//  DomainTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class DomainTests: BaseLinodeKitTest {

    func testDomainList() {
        executedSucceeded(endpoint: .DomainList) { res in
            if let domains = res as? PagedResponse<[DomainModel]>, let domain = domains.data.first {
                Settings.set(key: .domainId, value: domain.id)
            }
        }
    }
    
    func testDomainView() {
        let domainId:Int = (Settings.get(key: .domainId) as? Int) ?? 0
        executed(endpoint: .DomainView(id: domainId))
    }

    static var allTests = [
        ("testDomainList", testDomainList),
        ("testDomainView", testDomainView)
    ]
}
