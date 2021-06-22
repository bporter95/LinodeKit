//
//  LinodeType.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

extension LinodeKit {
    public struct LinodeType {
        /// Returns collection of Linode Types, including pricing and specifications for each Type. These are used when creating or resizing Linodes.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of LinodeTypeModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[LinodeTypeModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            LinodeKit.list(endpoint: APIEndpoint.LinodeType().List(), page: page, pageSize: pageSize,success: success,error: error)
        }
        
        /// Returns information about a specific Linode Type, including pricing and specifications. This is used when creating or resizing Linodes.
        /// - Parameter typeId: Id of the linode type you would like to retrieve
        /// - Parameter success: Success block that returns the LinodeTypeModels
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ typeId:String,success:@escaping(LinodeTypeModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.LinodeType().View(typeId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
