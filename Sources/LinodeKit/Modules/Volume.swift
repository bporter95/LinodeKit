//
//  Volume.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

extension LinodeKit {
    public struct Volume {
        /// Returns a paginated list of Volumes you have permission to view.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of VolumeModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[VolumeModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            LinodeKit.list(endpoint: APIEndpoint.Volumes().List(), page: page, pageSize: pageSize,success: success,error: error)
        }
        
        /// Get information about a single Volume.
        /// - Parameter volumeId: The ID of the Volume.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ volumeId:Int, success:@escaping(VolumeModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Volumes().View(volumeId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
