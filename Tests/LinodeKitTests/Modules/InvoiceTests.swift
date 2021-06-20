//
//  InvoiceTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class InvoiceTests: BaseLinodeKitTest {

    func testInvoiceList() {
        executedSucceeded(endpoint: .InvoiceList) { res in
            if let invoices = res as? PagedResponse<[InvoiceModel]>, let invoice = invoices.data.first {
                Settings.set(key: .invoiceId, value: invoice.id)
            }
        }
    }
    
    func testInvoiceView() {
        let invoiceId:Int = (Settings.get(key: .invoiceId) as? Int) ?? 0
        executed(endpoint: .InvoiceView(id: invoiceId))
        Settings.clear()
    }

    static var allTests = [
        ("testInvoiceList", testInvoiceList),
        ("testInvoiceView", testInvoiceView)
    ]
}
