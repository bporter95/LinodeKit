//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct LinodeTypeModel:BaseResponse {
    
    public struct Price: BaseResponse {
        let hourly:Double
        let monthly:Double
    }
    
    public struct Addons: BaseResponse {
        public struct Backups:BaseResponse {
            let price:Price
        }
        
        let backups:Backups
        
    }
    
    let addons:Addons
    let `class`:String
    let disk:Int
    let gpus:Int
    let id:String
    let label:String
    let memory:Int
    let network_out:Int
    let price: Price
    let successor:String?
    let transfer:Int
    let vcpus:Int
    
}
