//
//  Account.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

extension LinodeKit {
    struct Account {
        
         /// Returns the contact and billing information related to your Account.
        /// - Parameter success: Success block that returns the AccountModel
        /// - Parameter error: Error block that returns APIError model
        static func view(success:@escaping(AccountModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.View, method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
