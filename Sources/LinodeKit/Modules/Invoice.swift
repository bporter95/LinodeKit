//
//  Invoice.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit {
    public struct Invoice {
        /// Returns a paginated list of Invoices against your Account.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of InvoiceModels
        /// - Parameter error: Error block that returns APIError model
        public static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[InvoiceModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.Invoices.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// Returns a single Invoice object.
        /// - Parameter eventId: The ID of the Event.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        public static func view(_ invoiceId:Int, success:@escaping(InvoiceModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.Invoices.View(invoiceId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
