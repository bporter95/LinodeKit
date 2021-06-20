//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

public struct InvoiceModel: BaseResponse {
    let date:String
    let id:Int
    let label:String
    let subtotal:Double
    let tax:Double
    let total:Double
}
