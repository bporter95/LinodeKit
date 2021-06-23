//
//  PagedResponse.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import Foundation

public struct PagedResponse<T:Codable> : BaseResponse {
    public let data:T
    public let page:Int
    public let pages:Int
    public let results:Int
}
