//
//  VolumeModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct VolumeModel: BaseResponse {
    let created:String
    let filesystem_path:String
    let id:Int
    let label:String
    let linode_id:Int?
    let linode_label:String?
    let region:String
    let size:Int
    let status:String
    let tags:[String]
    let updated:String
}
