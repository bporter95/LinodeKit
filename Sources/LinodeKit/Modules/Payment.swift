//
//  Payment.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension LinodeKit {
    struct Payment {
        /// Returns a paginated list of Payments made on this Account.
        /// - Parameter page: Page number
        /// - Parameter pageSize: Number of items to return per page
        /// - Parameter success: Success block that returns the PagedResponse where data is a list of PaymentModels
        /// - Parameter error: Error block that returns APIError model
        static func list(page:Int = 1, pageSize: Int = 100, success:@escaping(PagedResponse<[PaymentModel]>) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.Payments.List, method: .Get, parameters: [
                APIParameter(key: "page", value: "\(page)"),
                APIParameter(key: "page_size", value: "\(pageSize)")
            ])
            LinodeKit.submit(request:request,success:success,error:error)

        }
        
        /// Returns information about a specific Payment.
        /// - Parameter paymentId: The ID of the Payment.
        /// - Parameter success: Success block that returns the UserModel
        /// - Parameter error: Error block that returns APIError model
        static func view(_ paymentId:Int, success:@escaping(PaymentModel) -> Void,error:((APIError) -> Void)? = nil) {
            let request = APIRequest(endpoint: APIEndpoint.Account.Payments.View(paymentId), method: .Get)
            LinodeKit.submit(request:request,success:success,error:error)
        }
    }
}
