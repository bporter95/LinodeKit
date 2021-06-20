//
//  PagedResponse.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct PagedResponse<T:Codable> : BaseResponse {
    var data:T
    var page:Int
    var pages:Int
    var results:Int
}
