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
    
    func testDomainRecordList() {
        let id = (Settings.get(key: .domainId) as? Int) ?? 0
        self.executedSucceeded(endpoint: .DomainRecordList(domainId:id)) { res in
            if let records = res as? PagedResponse<[DomainRecordModel]>, let record = records.data.first {
                Settings.set(key: .domainRecordId, value: record.id)
            }
        }
    }
    
    func testDomainRecordView() {
        let domainId:Int = (Settings.get(key: .domainId) as? Int) ?? 0
        let recordId:Int = (Settings.get(key: .domainRecordId) as? Int) ?? 0
        executed(endpoint: .DomainRecordView(domainId: domainId, recordId:recordId))
        Settings.clear()
    }

    static var allTests = [
        ("testDomainList", testDomainList),
        ("testDomainView", testDomainView),
        ("testDomainRecordList", testDomainRecordList),
        ("testDomainRecordView", testDomainRecordView)
    ]
}
