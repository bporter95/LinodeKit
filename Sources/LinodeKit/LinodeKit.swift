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
}

