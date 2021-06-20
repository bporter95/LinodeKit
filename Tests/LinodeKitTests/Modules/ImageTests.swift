//
//  ImageTests.swift
//  
//
//  Created by ben on 6/20/21.
//

import XCTest
@testable import LinodeKit

final class ImageTests: BaseLinodeKitTest {

    func testImageList() {
        executedSucceeded(endpoint: .ImageList) { res in
            if let images = res as? PagedResponse<[ImageModel]>, let image = images.data.first {
                Settings.set(key: .imageId, value: image.id)
            }
        }
    }
    
    func testImageView() {
        let imageId:Int = (Settings.get(key: .imageId) as? Int) ?? 0
        executed(endpoint: .ImageView(id: imageId))
    }

    static var allTests = [
        ("testImageList", testImageList),
        ("testImageView", testImageView)
    ]
}
