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
        
        struct Events {
            static let base = "account/events"
            static let List = base
            static func View(_ eventId:Int) -> String {
                return "\(base)/\(eventId)"
            }
        }
        
        struct Invoices {
            static let base = "account/invoices"
            static let List = base
            static func View(_ invoiceId:Int) -> String {
                return "\(base)/\(invoiceId)"
            }
        }
        
        struct Payments {
            static let base = "account/payments"
            static let List = base
            static func View(_ paymentId:Int) -> String {
                return "\(base)/\(paymentId)"
            }
        }
        
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
    
    struct Domains {
        static let base = "domains"
        static let List = base
        static func View(_ domainId:Int) -> String {
            return "\(base)/\(domainId)"
        }
    }
    
    struct DomainRecords {
        static let base = "domains"
        static func List(domainId:Int) -> String {
            return "\(base)/\(domainId)/records"
        }
        
        static func View(domainId:Int, recordId:Int) -> String {
            return "\(base)/\(domainId)/records/\(recordId)"
        }
    }
    
    struct Images {
        static let base = "images"
        static let List = base
        static func View(_ imageId:Int) -> String {
            return "\(base)/\(imageId)"
        }
    }
}
