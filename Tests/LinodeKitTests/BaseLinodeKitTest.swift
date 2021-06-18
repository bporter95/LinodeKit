//
//  BaseLinodeKitTest.swift
//  
//
//  Created by Benjamin Porter on 6/17/21.
//

import XCTest
@testable import LinodeKit

class BaseLinodeKitTest: XCTestCase {
    
    func setToken() {
        LinodeKit.token = SeedUtil.token
    }
    
    func clearToken() {
        LinodeKit.token = ""
    }
    
    enum Endpoint {
        case AccountView
        case UserList
        case UserView
        case UserCreate
        
        case LinodeList
        case LinodeView
    }
    
    func executedSucceeded(endpoint:Endpoint) {
        
        var executed = false
        var succeeded = false
            
        let success:(BaseResponse) -> Void = {_ in
            executed = true
            succeeded = true
        }
        
        let error:(APIError) -> Void = {_ in
            executed = true
        }
        
        performRequest(endpoint: endpoint, success: success, error: error)
        
        sleep(5)
        XCTAssertTrue(executed)
        XCTAssertTrue(succeeded)
    }
    
    func executed(endpoint:Endpoint) {
        
        var executed = false
            
        let success:(BaseResponse) -> Void = {_ in
            executed = true
        }
        
        let error:(APIError) -> Void = {_ in
            executed = true
        }
        
        performRequest(endpoint: endpoint, success: success, error: error)
        
        sleep(5)
        XCTAssertTrue(executed)
    }
    
    func executedAndFailed(endpoint:Endpoint,expectedError:APIError) {
        
        var executed = false
            
        let success:(BaseResponse) -> Void = {_ in
            executed = true
        }
        
        let error:(APIError) -> Void = {err in
            executed = true
            XCTAssert(expectedError == err)
        }
        
        performRequest(endpoint: endpoint, success: success, error: error)
        
        sleep(5)
        XCTAssertTrue(executed)
    }
    
    private func performRequest(endpoint:Endpoint,success:@escaping (BaseResponse) -> Void,error:@escaping (APIError) -> Void) {
        setToken()
        
        switch endpoint {
        case .AccountView:
            LinodeKit.Account.view(success: success, error: error)
            
        case .UserList:
            LinodeKit.Account.User.list(success: success, error: error)
        case .UserView:
            LinodeKit.Account.User.view(username:SeedUtil.username,success: success,error: error)
        case .UserCreate:
            LinodeKit.Account.User.create(email: SeedUtil.newEmail, username: SeedUtil.newUsername, restricted: true,success: success,error: error)
            
        case .LinodeList:
            LinodeKit.Linode.list(success: success, error: error)
        case .LinodeView:
            LinodeKit.Linode.view(linodeId: SeedUtil.linodeId, success: success, error:error)
        }
    }
}
