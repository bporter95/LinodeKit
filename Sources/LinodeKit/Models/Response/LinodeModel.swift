//
//  LinodeModel.swift
//  
//
//  Created by Benjamin Porter on 6/18/21.
//

import Foundation

public struct LinodeModel : Codable {
    
    public struct Specs : Codable {
        public let disk:Int
        public let memory:Int
        public let vcpus:Int
        public let gpus:Int
        public let transfer:Int
    }
    
    public struct Alerts : Codable {
        public let cpu:Int
        public let network_in:Int
        public let network_out:Int
        public let transfer_quota:Int
        public let io:Int
    }
    
    public struct Backups : Codable {
        public let enabled:Bool
        public let last_successful:String?
        public let schedule:Schedule?
        
        public struct Schedule : Codable {
            public let day:String?
            public let window:String?
        }
        
    }
    
    public let id:Int
    public let label:String
    public let group:String
    public let status:String
    public let created:String
    public let updated:String
    public let type:String
    public let ipv4:[String]
    public let ipv6:String?
    public let image:String?
    public let region:String
    public let hypervisor:String
    public let watchdog_enabled:Bool
    public let tags:[String]
    public let specs:Specs
    public let alerts:Alerts
    public let backups:Backups
}
