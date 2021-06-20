//
//  LinodeKitError.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct LinodeKitError: Codable,Equatable {
    var reason:String
}

public struct APIError : Codable,Equatable {
    var errors:[LinodeKitError]
}
