## Nemo Login
#### Configure NemoSignIn in your project (default info.plist)
1. NemoScope key replaced by AuthorizationScope
2. NemoUrl key replaced by Issuer

#### Initialize NemoSDK
```objectivec
//AppDelegate.m
[[NemoSDK sharedInstance] sdkInit:nil];
//replaced by
[[NemoSDK sharedInstance] sdkInit];
[NemoSDK sharedInstance].loginDelegate = self;
```

#### Authorization Interface
```objectivec
[[NemoSDK sharedInstance] login:self andDelegate:self];
[[NemoSDK sharedInstance] logoutBackground:self andDelegate:self];
//replaced by
[[NemoSDK sharedInstance] login];
[[NemoSDK sharedInstance] logout];
```

And, Add Tracking functionality to the SDK. [See more](https://github.com/itcgosucorp/nemosdk-ios#integrate-nemosdktracking)
