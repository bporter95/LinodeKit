//
//  File.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

extension LinodeKit {
    public struct NodeBalancer {
        /// Returns a paginated list of NodeBalancers you have access to.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of NodeBalancerModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[NodeBalancerModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            LinodeKit.list(endpoint: APIEndpoint.NodeBalancer().List(), page: page, pageSize: pageSize,success: success,error: error)
        }
        
        /// Returns a single NodeBalancer you can access.
        /// - Parameter id: Id of the node balancer you would like to retrieve
        /// - Parameter success: Success block that returns the NodeBalancerModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ id:Int,success:@escaping(NodeBalancerModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.NodeBalancer().View(id), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
