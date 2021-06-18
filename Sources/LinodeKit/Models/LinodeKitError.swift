//
//  LinodeKitError.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

struct LinodeKitError: Codable,Equatable {
    var reason:String
}

struct APIError : Codable,Equatable {
    var errors:[LinodeKitError]
}
