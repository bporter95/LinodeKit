//
//  UserModel.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation
public struct UserModel:BaseResponse {
    var username:String
    var email:String
    var restricted:Bool
    var ssh_keys:[String]
    var tfa_enabled:Bool
}
