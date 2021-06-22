//
//  EventTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class EventTests: BaseLinodeKitTest {

    func testEventList() {
        executedSucceeded(endpoint: .EventList) { res in
            if let events = res as? PagedResponse<[EventModel]>, let event = events.data.first {
                Settings.set(key: .id, value: event.id)
            }
        }
    }
    
    func testEventView() {
        let eventId:Int = (Settings.get(key: .id) as? Int) ?? 0
        executed(endpoint: .EventView(id: eventId))
        Settings.clear()
    }

    static var allTests = [
        ("testEventList", testEventList),
        ("testEventView", testEventView)
    ]
}
