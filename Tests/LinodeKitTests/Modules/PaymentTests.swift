//
//  PaymentTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class PaymentTests: BaseLinodeKitTest {

    func testPaymentList() {
        executedSucceeded(endpoint: .PaymentList) { res in
            if let payments = res as? PagedResponse<[PaymentModel]>, let payment = payments.data.first {
                Settings.set(key: .id, value: payment.id)
            }
        }
    }
    
    func testPaymentView() {
        let paymentId:Int = (Settings.get(key: .id) as? Int) ?? 0
        executed(endpoint: .PaymentView(id: paymentId))
        Settings.clear()
    }

    static var allTests = [
        ("testPaymentList", testPaymentList),
        ("testPaymentView", testPaymentView)
    ]
}
