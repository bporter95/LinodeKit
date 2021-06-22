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
        
        struct Events : BaseAPIEndpoint {
            let base: String = "account/events"
        }
        
        struct Invoices : BaseAPIEndpoint {
            let base : String = "account/invoices"
        }
        
        struct Payments : BaseAPIEndpoint {
            let base: String = "account/payments"
        }
        
        struct User : BaseAPIEndpoint {
            let base: String = "account/users"
        }
    }
    
    struct Domains : BaseAPIEndpoint {
        let base: String = "domains"
    }
    
    struct DomainRecords {
        let base = "domains"
        func List(domainId:Int) -> String {
            return "\(base)/\(domainId)/records"
        }
        
        func View(domainId:Int, recordId:Int) -> String {
            return "\(base)/\(domainId)/records/\(recordId)"
        }
    }
    
    struct Images : BaseAPIEndpoint {
        let base: String = "images"
    }
    
    struct Linode : BaseAPIEndpoint {
        let base: String = "linode/instances"
    }
    
    struct LinodeType : BaseAPIEndpoint {
        let base: String = "linode/types"
    }
    
    struct NodeBalancer : BaseAPIEndpoint {
        let base: String = "nodebalancers"
    }
    
    struct ObjectStorageBucket : BaseAPIEndpoint {
        let base = "object-storage/buckets"
    }
    
    struct Volumes : BaseAPIEndpoint {
        let base = "volumes"
    }
}
