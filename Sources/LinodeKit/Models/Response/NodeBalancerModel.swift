//
//  NodeBalancerModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct NodeBalancerModel: BaseResponse {
    
    public struct Transfer: BaseResponse {
        public let `in`: Double
        public let out: Double
        public let total: Double
    }
    
    public let client_conn_throttle:Int
    public let created: String
    public let hostname: String
    public let id: Int
    public let ipv4: String
    public let ipv6: String?
    public let label: String
    public let region: String
    public let tags: [String]
    public let transfer: Transfer
    public let updated: String
}
