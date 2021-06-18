//
//  APIRequest.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

internal class APIRequest {
    var baseUrl:String = "https://api.linode.com/v4/"
    var endpoint:String
    var method:APIMethod
    var parameters: [String : String]
    var endpointSuffix: String
    
    init(endpoint:String,method:APIMethod, parameters:[APIParameter] = [], endpointSuffix:String = "") {
        self.endpoint = endpoint
        self.method = method
        self.parameters = [:]
        self.endpointSuffix = endpointSuffix
        parameters.forEach { (param) in
            self.parameters[param.key] = param.value
        }
    }
    
    func getUrl() -> URL? {
        return URL(string: "\(baseUrl)/\(endpoint)\(endpointSuffix)")
    }
}

