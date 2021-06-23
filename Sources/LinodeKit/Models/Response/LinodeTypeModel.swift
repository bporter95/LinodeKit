//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct LinodeTypeModel:BaseResponse {
    
    public struct Price: BaseResponse {
        public let hourly:Double
        public let monthly:Double
    }
    
    public struct Addons: BaseResponse {
        public struct Backups:BaseResponse {
            public let price:Price
        }
        
        public let backups:Backups
        
    }
    
    public let addons:Addons
    public let `class`:String
    public let disk:Int
    public let gpus:Int
    public let id:String
    public let label:String
    public let memory:Int
    public let network_out:Int
    public let price: Price
    public let successor:String?
    public let transfer:Int
    public let vcpus:Int
    
}
