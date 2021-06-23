//
//  DomainModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct DomainModel: BaseResponse {
    public let axfr_ips: [String]?
    public let description: String?
    public let domain: String
    public let expire_sec:Int
    public let group:String?
    public let id:Int
    public let master_ips:[String]
    public let refresh_sec:Int
    public let retry_sec:Int
    public let soa_email:String
    public let status:String
    public let tags:[String]
    public let ttl_sec:Int
    public let type:String
}
