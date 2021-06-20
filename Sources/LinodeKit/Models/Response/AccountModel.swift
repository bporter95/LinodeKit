//
//  AccountModel.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct AccountModel : BaseResponse {
    var company:String
    var email:String
    var first_name:String
    var last_name:String
    var address_1:String
    var address_2:String
    var city:String
    var state:String
    var zip:String
    var country:String
    var phone:String
    var balance:Double
    var tax_id:String
    var credit_card:CreditCard
    var balance_uninvoiced:Double
    var active_since:String
    var capabilities:[String]
    var active_promotions:[String]
    var euuid:String
    
    struct CreditCard : Codable {
        var last_four:String
        var expiry:String
    }
}

