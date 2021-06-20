# LinodeKit

LinodeKit is an unofficial [Linode](https://www.linode.com/) SDK that allows you to easily interact with the [Linode API](https://www.linode.com/docs/api/) using Swift. To get started, get an [API Token](https://www.linode.com/docs/products/tools/cloud-manager/guides/cloud-api-keys) from your Linode account.


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


# Installation
To add LinodeKit to your Xcode project, select File -> Swift Packages -> Add Package Depedancy. Enter https://github.com/bporter95/LinodeKit for the URL and select the `main` branch


# Supported Endpoints
- Account.Event.list()
- Account.Event.view(eventId)
- Account.Invoice.list()
- Account.Invoice.view(invoiceId)
- Account.Payment.list()
- Account.Payment.view(paymentId)
- Account.User.list()
- Account.User.view(username)
- Account.User.create(email,username,restricted)
- Account.view()
- Domain.list()
- Domain.view(domainId)
- DomainRecord.list(domainId)
- DomainRecord.view(domainId, recordId)
- Image.list()
- Image.view(imageId)
- Linode.list()
- Linode.view(linodeId)



Enjoy LinodeKit? [Buy me a cold brew](https://venmo.com/code?user_id=2086648682643456668&printed=1)
