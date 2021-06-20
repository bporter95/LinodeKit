//
//  EventModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

struct EventModel: BaseResponse {
    
    struct Entity : BaseResponse {
        let id:Int?
        let label:String?
        let type:String
        let url:String
    }
    
    let action:String
    let created:String
    let duration:Double?
    let entity:Entity
    let id:Int
    let message:String
    let percent_complete:Double?
    let rate:String?
    let read: Bool
    let seen:Bool
    let status:String?
    let time_remaining:Double?
    let username:String
}
