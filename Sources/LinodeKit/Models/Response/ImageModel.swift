//
//  ImageModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

struct ImageModel: BaseResponse {
    let created:String
    let created_by:String
    let deprecated:Bool
    let description:String?
    let eol:String?
    let expiry:String?
    let id:String
    let is_public:Bool
    let label:String
    let size:Int
    let status:String?
    let type:String
    let updated:String?
    let vendor:String
}
