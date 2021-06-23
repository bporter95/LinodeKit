//
//  EventModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct EventModel: BaseResponse {
    
    public struct Entity : BaseResponse {
        public let id:Int?
        public let label:String?
        public let type:String
        public let url:String
    }
    
    public let action:String
    public let created:String
    public let duration:Double?
    public let entity:Entity
    public let id:Int
    public let message:String?
    public let percent_complete:Double?
    public let rate:String?
    public let read: Bool
    public let seen:Bool
    public let status:String?
    public let time_remaining:Double?
    public let username:String
}
