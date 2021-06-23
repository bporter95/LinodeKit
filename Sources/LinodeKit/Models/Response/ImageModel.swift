//
//  ImageModel.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct ImageModel: BaseResponse {
    public let created:String
    public let created_by:String
    public let deprecated:Bool
    public let description:String?
    public let eol:String?
    public let expiry:String?
    public let id:String
    public let is_public:Bool
    public let label:String
    public let size:Int
    public let status:String?
    public let type:String
    public let updated:String?
    public let vendor:String
}
