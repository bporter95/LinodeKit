//
//  SeedUtil.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

struct SeedUtil {
    static var token:String {
        get {
            if(ProcessInfo.processInfo.environment.keys.contains("API_TOKEN")){
                return ProcessInfo.processInfo.environment["API_TOKEN"] ?? ""
            }
            return ""
        }
    }
    static let username = ""
    static let newUsername = ""
    static let newEmail = ""
    static let linodeId = 0
}
