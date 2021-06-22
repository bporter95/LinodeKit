//
//  NodeBalancer.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//


import XCTest
@testable import LinodeKit

final class NodeBalancerTests: BaseLinodeKitTest {

    func testNodeBalancerList() {
        executedSucceeded(endpoint: .NodeBalancerList) { res in
            if let nodeBalancers = res as? PagedResponse<[NodeBalancerModel]>, let nodeBalancer = nodeBalancers.data.first {
                Settings.set(key: .id, value: nodeBalancer.id)
            }
        }
    }
    
    func testNodeBalancerView() {
        let nodeBalancerId:Int = (Settings.get(key: .id) as? Int) ?? 0
        executed(endpoint: .NodeBalancerView(id: nodeBalancerId))
        Settings.clear()
    }

    static var allTests = [
        ("testNodeBalancerList", testNodeBalancerList),
        ("testNodeBalancerView", testNodeBalancerView)
    ]
}
