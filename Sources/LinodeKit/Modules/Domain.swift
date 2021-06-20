//
//  Domain.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit {
    struct Domain {
        /// This is a collection of Domains that you have registered in Linode’s DNS Manager. Linode is not a registrar, and in order for these to work you must own the domains and point your registrar at Linode’s nameservers.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of DomainModels
        /// - Parameter error: Error block that returns APIError model
        static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[DomainModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Domains.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// This is a single Domain that you have registered in Linode’s DNS Manager. Linode is not a registrar, and in order for this Domain record to work you must own the domain and point your registrar at Linode’s nameservers.
        /// - Parameter domainId: The ID of the Domain.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        static func view(_ domainId:Int, success:@escaping(DomainModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Domains.View(domainId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
