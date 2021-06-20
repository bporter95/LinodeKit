//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct DomainRecordModel: BaseResponse {
    let created:String
    let id:Int
    let name:String
    let port:Int
    let priority:Int
    let service:String?
    let tag:String?
    let target:String
    let ttl_sec:Int
    let type:String
    let updated:String
    let weight:Int
}
