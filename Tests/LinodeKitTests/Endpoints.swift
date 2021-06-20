//
//  File.swift
//  
//
//  Created by ben on 6/20/21.
//

import Foundation

extension BaseLinodeKitTest {
    enum Endpoint {
        case AccountView
        case UserList
        case UserView(username:String)
        case UserCreate
        
        case LinodeList
        case LinodeView(id:Int)
        
        case EventList
        case EventView(id:Int)
        
        case InvoiceList
        case InvoiceView(id:Int)
        
        case PaymentList
        case PaymentView(id:Int)
        
        case DomainList
        case DomainView(id:Int)
        
        case DomainRecordList(domainId:Int)
        case DomainRecordView(domainId:Int, recordId:Int)
        
        case ImageList
        case ImageView(id:Int)
    }
}
