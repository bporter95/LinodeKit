//
//  Linode.swift
//  
//
//  Created by Benjamin Porter on 6/18/21.
//

import Foundation

extension LinodeKit {
    public struct Linode {
        /// Returns a paginated list of Linodes you have permission to view.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of LinodeModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[LinodeModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Linode.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)
        }
        
        /// Get a specific Linode by ID.
        /// - Parameter linodeId: Id of the linode you would like to retrieve
        /// - Parameter success: Success block that returns the LinodeModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ linodeId:Int,success:@escaping(LinodeModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Linode.View(linodeId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
