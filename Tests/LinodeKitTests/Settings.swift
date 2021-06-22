//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

struct Settings {
    
    enum Keys : String, CaseIterable {
        case id = "id"
        case username = "username"
        case domainId = "domainId"
        case domainRecordId = "domainRecordId"
        case objectStorageBucketId = "objectStorageBucketId"
        case objectStorageClusterId = "objectStorageClusterId"
    }
    
    static let settings = UserDefaults.init(suiteName: "LinodeKit_Tests")
    
    static func set(key:Keys, value:Codable?) {
        settings?.setValue(value, forKey: key.rawValue)
    }
    
    static func get(key:Keys) -> Any? {
        return settings?.value(forKey: key.rawValue)
    }
    
    static func clear() {
        Keys.allCases.forEach { key in
            self.set(key: key, value: nil)
        }
    }
}
