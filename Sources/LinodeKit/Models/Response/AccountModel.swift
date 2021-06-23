//
//  AccountModel.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct AccountModel : BaseResponse {
    public let company:String
    public let email:String
    public let first_name:String
    public let last_name:String
    public let address_1:String
    public let address_2:String
    public let city:String
    public let state:String
    public let zip:String
    public let country:String
    public let phone:String
    public let balance:Double
    public let tax_id:String?
    public let credit_card:CreditCard
    public let balance_uninvoiced:Double
    public let active_since:String
    public let capabilities:[String]
    public let active_promotions:[String]
    public let euuid:String
    
    public struct CreditCard : Codable {
        public let last_four:String
        public let expiry:String
    }
}

