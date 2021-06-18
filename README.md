# LinodeKit

LinodeKit allows you to easily interact with the [Linode](https://www.linode.com/) API. To get started, get an [API Token](https://www.linode.com/docs/products/tools/cloud-manager/guides/cloud-api-keys) from your Linode account.


## Setup & Basic Usage

```
import LinodeKit

...

LinodeKit.token = "your-token-here"
LinodeKit.Account.view { (account) in
    
} error: { (err) in
    
}
```

You can also set `LinodeKit.debug = true` to log networking traffic to the console


# Supported Endpoints
- Account.view()
- Account.User.list()
- Account.User.view(username)
- Account.User.create(email,username,restricted)



Enjoy LinodeKit? [Buy me a cold brew](https://venmo.com/code?user_id=2086648682643456668&printed=1)