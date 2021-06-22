//
//  ObjectStorageBucket.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation


extension LinodeKit {
    public struct ObjectStorageBucket {
        /// Returns a paginated list of ObjectStorageBuckets you have access to.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of ObjectStorageBucketModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[ObjectStorageBucketModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            LinodeKit.list(endpoint: APIEndpoint.ObjectStorageBucket().List(), page: page, pageSize: pageSize,success: success,error: error)
        }
        
        /// Returns a single ObjectStorageBucket you can access.
        /// - Parameter clusterId: The ID of the cluster this bucket exists in.
        /// - Parameter bucket: The bucket name.
        /// - Parameter success: Success block that returns the ObjectStorageBucketModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(clusterId:String, bucket:String, success:@escaping(ObjectStorageBucketModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.ObjectStorageBucket().View(clusterId,bucket), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
