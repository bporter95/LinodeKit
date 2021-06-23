//
//  Event.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit.Account {
    public struct Event {
        /// Returns a collection of Event objects representing actions taken on your Account from the last 90 days. The Events returned depend on your grants.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of EventModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[EventModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            LinodeKit.list(endpoint: APIEndpoint.Account.Events().List(), page: page, pageSize: pageSize,success: success,error: error)
        }
        
        /// Returns a single Event object.
        /// - Parameter eventId: The ID of the Event.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ eventId:Int, success:@escaping(EventModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.Events().View(eventId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
