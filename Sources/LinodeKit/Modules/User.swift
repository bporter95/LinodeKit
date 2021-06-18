//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

extension LinodeKit.Account {
    struct User {
        static func list(success:@escaping(PagedResponse<[UserModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.List, method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        static func view(username:String, success:@escaping(UserModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.View(username), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
        
        static func create(email:String,username:String, restricted:Bool,success:@escaping(UserModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.Create, method: .Post)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
