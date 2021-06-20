//
//  DomainModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

struct DomainModel: BaseResponse {
    let axfr_ips: [String]?
    let description: String?
    let domain: String
    let expire_sec:Int
    let group:String?
    let id:Int
    let master_ips:[String]
    let refresh_sec:Int
    let retry_sec:Int
    let soa_email:String
    let status:String
    let tags:[String]
    let ttl_sec:Int
    let type:String
}
