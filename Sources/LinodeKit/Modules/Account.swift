//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

extension LinodeKit {
    struct Account {
        static func view(success:@escaping(AccountModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.View, method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
