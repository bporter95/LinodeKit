//
//  ObjectStorageBucket.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import XCTest
@testable import LinodeKit

final class ObjectStorageBucketTests: BaseLinodeKitTest {

    func testObjectStorageBucketList() {
        executedSucceeded(endpoint: .ObjectStorageBucketList) { res in
            if let objectStorageBuckets = res as? PagedResponse<[ObjectStorageBucketModel]>, let objectStorageBucket = objectStorageBuckets.data.first {
                Settings.set(key: .objectStorageClusterId, value: objectStorageBucket.cluster)
                Settings.set(key: .objectStorageBucketId, value: objectStorageBucket.label)
            }
        }
    }
    
    func testObjectStorageBucketView() {
        let objectStorageBucketId:String = (Settings.get(key: .objectStorageBucketId) as? String) ?? ""
        let objectStorageClusterId:String = (Settings.get(key: .objectStorageClusterId) as? String) ?? ""
        executed(endpoint: .ObjectStorageBucketView(clusterId: objectStorageClusterId, bucket: objectStorageBucketId))
        Settings.clear()
    }

    static var allTests = [
        ("testObjectStorageBucketList", testObjectStorageBucketList),
        ("testObjectStorageBucketView", testObjectStorageBucketView)
    ]
}
