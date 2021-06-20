//
//  DomainRecord.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit {
    struct DomainRecord {
        /// Returns a paginated list of Records configured on a Domain in Linode’s DNS Manager.
        /// - Parameter domainId: The ID of the Domain we are accessing Records for.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of DomainModels
        /// - Parameter error: Error block that returns APIError model
        static func list(_ domainId:Int, page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[DomainRecordModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.DomainRecords.List(domainId: domainId), method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// This is a single Domain that you have registered in Linode’s DNS Manager. Linode is not a registrar, and in order for this Domain record to work you must own the domain and point your registrar at Linode’s nameservers.
        /// - Parameter domainId: The ID of the Domain whose Record you are accessing.
        /// - Parameter recordId: The ID of the Record you are accessing.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        static func view(domainId:Int, recordId:Int, success:@escaping(DomainRecordModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.DomainRecords.View(domainId: domainId, recordId: recordId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
