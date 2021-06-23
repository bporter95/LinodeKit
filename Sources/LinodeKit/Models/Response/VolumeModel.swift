//
//  VolumeModel.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

public struct VolumeModel: BaseResponse {
    public let created:String
    public let filesystem_path:String
    public let id:Int
    public let label:String
    public let linode_id:Int?
    public let linode_label:String?
    public let region:String
    public let size:Int
    public let status:String
    public let tags:[String]
    public let updated:String
}
