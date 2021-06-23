//
//  UserModel.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation
public struct UserModel:BaseResponse {
    public let username:String
    public let email:String
    public let restricted:Bool
    public let ssh_keys:[String]
    public let tfa_enabled:Bool
}
