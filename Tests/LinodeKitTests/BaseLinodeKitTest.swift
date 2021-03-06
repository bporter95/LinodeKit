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
        print(SeedUtil.token)
        LinodeKit.token = SeedUtil.token
    }
    
    func clearToken() {
        LinodeKit.token = ""
    }
    
    func executedSucceeded(endpoint:Endpoint, callback:((BaseResponse) -> Void)? = nil) {
        
        var executed = false
        var succeeded = false
            
        let success:(BaseResponse) -> Void = {res in
            executed = true
            succeeded = true
            callback?(res)
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
        case .UserView(let username):
            LinodeKit.Account.User.view(username,success: success,error: error)
        case .UserCreate:
            LinodeKit.Account.User.create(email: SeedUtil.newEmail, username: SeedUtil.newUsername, restricted: true,success: success,error: error)
            
        case .LinodeList:
            LinodeKit.Linode.list(success: success, error: error)
        case .LinodeView(let linodeId):
            LinodeKit.Linode.view(linodeId, success: success, error:error)
            
        case .EventList:
            LinodeKit.Account.Event.list(success: success, error: error)
        case .EventView(let id):
            LinodeKit.Account.Event.view(id, success: success, error:error)
            
        case .InvoiceList:
            LinodeKit.Account.Invoice.list(success: success, error: error)
        case .InvoiceView(let id):
            LinodeKit.Account.Invoice.view(id, success: success, error:error)
            
        case .PaymentList:
            LinodeKit.Account.Payment.list(success: success, error: error)
        case .PaymentView(let id):
            LinodeKit.Account.Payment.view(id, success: success, error:error)
        
        case .DomainList:
            LinodeKit.Domain.list(success: success, error: error)
        case .DomainView(let id):
            LinodeKit.Domain.view(id, success: success, error:error)
            
        case .DomainRecordList(let domainId):
            LinodeKit.DomainRecord.list(domainId, success: success, error: error)
        case .DomainRecordView(let domainId, let recordId):
            LinodeKit.DomainRecord.view(domainId: domainId, recordId: recordId, success: success, error:error)
            
        case .ImageList:
            LinodeKit.Image.list(success: success, error: error)
        case .ImageView(let id):
            LinodeKit.Image.view(id, success: success, error:error)
            
        case .LinodeTypeList:
            LinodeKit.LinodeType.list(success: success, error: error)
        case .LinodeTypeView(let typeId):
            LinodeKit.LinodeType.view(typeId, success: success, error:error)
            
            
        case .NodeBalancerList:
            LinodeKit.NodeBalancer.list(success: success, error: error)
        case .NodeBalancerView(let id):
            LinodeKit.NodeBalancer.view(id, success: success, error:error)
            
        case .ObjectStorageBucketList:
            LinodeKit.ObjectStorageBucket.list(success: success, error: error)
        case .ObjectStorageBucketView(let clusterId, let bucket):
            LinodeKit.ObjectStorageBucket.view(clusterId: clusterId, bucket: bucket, success: success, error:error)
            
        case .VolumeList:
            LinodeKit.Volume.list(success: success, error: error)
        case .VolumeView(let id):
            LinodeKit.Volume.view(id, success: success, error:error)
        }
    }
}
