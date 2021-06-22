import Foundation

public struct LinodeKit {
    
    
    static func getDefaults() -> UserDefaults? {
        let suiteName = "LinodeKit"
        return UserDefaults.init(suiteName: suiteName)
    }
    
    public static var debug:Bool {
        get {
            return getDefaults()?.bool(forKey: "debug") ?? false
        }
        set {
            getDefaults()?.setValue(newValue, forKey: "debug")
        }
    }
    
    public static var token:String {
        get {
            getDefaults()?.string(forKey: "Authorization") ?? ""
        }
        set {
            getDefaults()?.setValue(newValue, forKey: "Authorization")
        }
    }
    
    public static func submit<T:Codable>(request:APIRequest, success:@escaping(T) -> Void,error:((APIError) -> Void)? = nil) {
        if(debug) {
            print(request.getUrl()?.absoluteURL ?? "Invalid Url")
        }
        APIClient.submit(req: request) { (res) in
            if let user = res.decode(type: T.self) {
                success(user)
            }  else {
                let err = res.getError()
                error?(err)
            }
        } error: { (err) in
            error?(APIError(errors: [LinodeKitError(reason: err)]))
        }
    }
    
    public static func list<T:BaseResponse>(endpoint:String, page:Int = 1, pageSize: Int = 100, success:@escaping(T) -> Void,error:((APIError) -> Void)? = nil) {
        let request = APIRequest(endpoint: endpoint, method: .Get, parameters: [
            APIParameter(key: "page", value: "\(page)"),
            APIParameter(key: "page_size", value: "\(pageSize)")
        ])
        LinodeKit.submit(request:request,success:success,error:error)
    }
}

