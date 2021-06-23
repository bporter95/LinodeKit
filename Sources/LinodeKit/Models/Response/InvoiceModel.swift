//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct InvoiceModel: BaseResponse {
    public let date:String
    public let id:Int
    public let label:String
    public let subtotal:Double
    public let tax:Double
    public let total:Double
}
