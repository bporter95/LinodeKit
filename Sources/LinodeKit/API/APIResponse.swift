//
//  APIResponse.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

class APIResponse : Codable {
    var data:Data?
    init(data:Data) {
        self.data = data
    }
    
    func decode<T:Codable>(type:T.Type) -> T? {
        do {
            let model: T = try JSONDecoder().decode(T.self, from: data ?? Data() )
            return model
        } catch(let err) {
            if(LinodeKit.debug) {
                print(err)
            }
        }
        return nil
    }
    
    func getError() -> APIError {
        let model = self.decode(type: APIError.self) ?? APIError(errors: [LinodeKitError(reason: "Failed to parse response")])
        return model
    }
}

