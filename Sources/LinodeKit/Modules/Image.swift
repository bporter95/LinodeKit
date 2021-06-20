//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit {
    struct Image {
        /// Returns a paginated list of Images.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of ImageModels
        /// - Parameter error: Error block that returns APIError model
        static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[ImageModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Images.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// Get information about a single Image.
        /// - Parameter imageId: The ID of the Image.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        static func view(_ imageId:Int, success:@escaping(ImageModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Images.View(imageId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}