//
//  APIClient.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

struct APIClient {
    
    static func submit(req:APIRequest,success:@escaping(APIResponse) -> Void,error:@escaping(String) -> Void) {
        
        guard let url = req.getUrl() else {
            error("Invalid URL")
            return
        }
        
        guard var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            error("Failed to build url")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = req.method.rawValue
        request.addValue("Bearer \(LinodeKit.token)", forHTTPHeaderField: "Authorization")
        
        if req.method == .Get {
            components.queryItems = req.parameters.map {
                URLQueryItem(name: String($0), value: "\($1)")
            }
            request.url = components.url
        }
        
        if(req.method == .Post){
            let post_params = postStringForDict(dict:req.parameters)
            request.httpBody = post_params
        }

        let task = URLSession.shared.dataTask(with: request) { data, response, err in
            
            if(LinodeKit.debug) {
                print(String(data: data ?? Data(), encoding: .utf8) ?? "")
            }
            
            guard let data = data, err == nil else {
                let e = err?.localizedDescription ?? "No data"
                error(e)
                return
            }
            
            success(APIResponse(data:data))
        }

        task.resume()
    }
    
    static func postStringForDict(dict:Dictionary<String,Codable>)->Data{
        do{
            let string = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
            return string
        }catch{
            
        }
        
        return Data()
        
    }
}
