//
//  User.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

extension LinodeKit.Account {
    struct User {
        /// Returns a paginated list of Users on your Account. Users may access all or part of your Account based on their restricted status and grants. An unrestricted User may access everything on the account, whereas restricted User may only access entities or perform actions they’ve been given specific grants to.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of UserModels
        /// - Parameter error: Error block that returns APIError model
        static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[UserModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// Returns information about a single User on your Account.
        /// - Parameter username: Username of the user you would like to retrieve
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        static func view(_ username:String, success:@escaping(UserModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.View(username), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
        
        /// Creates a User on your Account. Once created, a confirmation message containing password creation and login instructions is sent to the User’s email address.
        /// - Parameter email: email address of the new user
        /// - Parameter username: username of the new user
        /// - Parameter restricted: If true, the new User must be granted access to perform actions or access entities on this Account
        /// - Parameter success: Success block that returns the UserModel of the newly created user
        /// - Parameter error: Error block that returns APIError model
        static func create(email:String,username:String, restricted:Bool,success:@escaping(UserModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.User.Create, method: .Post)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
