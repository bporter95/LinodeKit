//
//  ObjectStorageBucketModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct ObjectStorageBucketModel: BaseResponse {
    let cluster:String
    let created:String
    let hostname:String
    let label:String
    let objects:Int
    let size:Int
}
