//
//  APIEndpoint.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

struct APIEndpoint  {
    struct Account {
        static let View = "account"
        
        struct User {
            static let base = "account/users"
            static let List = base
            static let Create = base
            static func View(_ username:String) -> String {
                return "\(base)/\(username)"
            }
        }
    }
    
    struct Linode {
        static let base = "linode/instances"
        static let List = base
        static func View(_ linodeId:Int) -> String {
            return "\(base)/\(linodeId)"
        }
    }
}
