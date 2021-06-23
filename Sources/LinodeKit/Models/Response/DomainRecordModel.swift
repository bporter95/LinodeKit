//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct DomainRecordModel: BaseResponse {
    public let created:String
    public let id:Int
    public let name:String
    public let port:Int
    public let priority:Int
    public let `protocol`: String?
    public let service:String?
    public let tag:String?
    public let target:String
    public let ttl_sec:Int
    public let type:String
    public let updated:String
    public let weight:Int
}
