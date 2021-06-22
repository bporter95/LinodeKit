//
//  NodeBalancerModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct NodeBalancerModel: BaseResponse {
    
    public struct Transfer: BaseResponse {
        let `in`: Double
        let out: Double
        let total: Double
    }
    
    let client_conn_throttle:Int
    let created: String
    let hostname: String
    let id: Int
    let ipv4: String
    let ipv6: String?
    let label: String
    let region: String
    let tags: [String]
    let transfer: Transfer
    let updated: String
}
