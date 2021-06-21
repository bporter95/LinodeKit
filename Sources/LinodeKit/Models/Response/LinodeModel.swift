//
//  LinodeModel.swift
//  
//
//  Created by Benjamin Porter on 6/18/21.
//

import Foundation

public struct LinodeModel : Codable {
    
    public struct Specs : Codable {
        var disk:Int
        var memory:Int
        var vcpus:Int
        var gpus:Int
        var transfer:Int
    }
    
    public struct Alerts : Codable {
        var cpu:Int
        var network_in:Int
        var network_out:Int
        var transfer_quota:Int
        var io:Int
    }
    
    public struct Backups : Codable {
        var enabled:Bool
        var last_successful:String?
        var schedule:Schedule?
        
        public struct Schedule : Codable {
            var day:String?
            var window:String?
        }
        
    }
    
    var id:Int
    var label:String
    var group:String
    var status:String
    var created:String
    var updated:String
    var type:String
    var ipv4:[String]
    var ipv6:String?
    var image:String?
    var region:String
    var hypervisor:String
    var watchdog_enabled:Bool
    var tags:[String]
    var specs:Specs
    var alerts:Alerts
    var backups:Backups
}
