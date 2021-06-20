//
//  DomainRecordTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class DomainRecordTests: BaseLinodeKitTest {
    
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
        ("testDomainRecordList", testDomainRecordList),
        ("testDomainRecordView", testDomainRecordView)
    ]
}
