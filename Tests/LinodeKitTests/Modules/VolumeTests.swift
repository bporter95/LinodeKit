//
//  VolumeTests.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import XCTest
@testable import LinodeKit

final class VolumeTests: BaseLinodeKitTest {

    func testVolumeList() {
        executedSucceeded(endpoint: .VolumeList) { res in
            if let volumes = res as? PagedResponse<[VolumeModel]>, let volume = volumes.data.first {
                Settings.set(key: .id, value: volume.id)
            }
        }
    }
    
    func testVolumeView() {
        let volumeId:Int = (Settings.get(key: .id) as? Int) ?? 0
        executed(endpoint: .VolumeView(id: volumeId))
        Settings.clear()
    }

    static var allTests = [
        ("testVolumeList", testVolumeList),
        ("testVolumeView", testVolumeView)
    ]
}
