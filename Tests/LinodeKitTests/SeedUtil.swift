//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

struct SeedUtil {
    static let token = ""
    static let username = ""
    
    static func randomEmail() -> String {
        return "\(randomString(length: 10))@example.com"
    }
    
    static func randomUsername() -> String {
        return randomString(length: 10)
    }
    
    private static func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
