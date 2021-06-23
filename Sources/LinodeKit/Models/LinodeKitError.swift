//
//  LinodeKitError.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct LinodeKitError: Codable,Equatable {
    public var reason:String
}

public struct APIError : Codable,Equatable {
    public var errors:[LinodeKitError]
}
