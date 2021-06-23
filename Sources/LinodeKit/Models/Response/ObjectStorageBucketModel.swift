//
//  ObjectStorageBucketModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct ObjectStorageBucketModel: BaseResponse {
    public let cluster:String
    public let created:String
    public let hostname:String
    public let label:String
    public let objects:Int
    public let size:Int
}
