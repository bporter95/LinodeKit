//
//  BaseAPIEndpoint.swift
//  
//
//  Created by Benjamin Porter on 6/22/21.
//

import Foundation

protocol BaseAPIEndpoint {
    var base:String { get }
}

extension BaseAPIEndpoint {
    func List() -> String{
        return base
    }
    
    func View(_ id:Codable,_ secondaryId:Codable? = nil) -> String {
        var str = "\(base)/\(id)"
        if let secondaryId = secondaryId {
            str += "/\(secondaryId)"
        }
        return str
    }
    
    func Create() -> String {
        return base
    }
}
