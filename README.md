# Nemo iOS SDK

**This guide shows you how to integrate your iOS app using the NemoSDK for iOS. The NemoSDK for iOS consists of the following component SDKs:**
  - Nemo Core: NemoSDK.xcframework
  - Nemo Tracking: NemoSDKTracking.xcframework
  - OpenId: AppAuth.framework
  

### FEATURES:
  - Login: Authenticate people with NemoID credentials.
  - Tracking: AppsFlyer
  - You will need some included keys: ClientID, Issuer, AuthorizationScope, AppsFlyerDevKey, AppsFylerAppleID and UrlScheme into info.plist
  
# Integrate NemoSDK Core:

- Embed NemoSDK latest version and Third party framework into your project
- Some other libraries: 
  - AppAuth.framework

#### Configure NemoSignIn in your project (default info.plist)
  ```xml
    <key>CFBundleURLTypes</key>
    <array>
      <dict>
        <key>CFBundleURLSchemes</key>
        <array>
          <string>[RedirectURL/EndSessionEndpoint]</string>
        </array>
      </dict>
    </array>
    <key>ClientID</key>
    <string>[ClientID]</string>
    <key>AuthorizationScope</key>
    <string>openid email phone_number profile offline_access</string>
    <key>Issuer</key>
    <string>[Issuer]</string>
  ```
  - Issuer: The fully qualified issuer URL of the server (example: https://gid-uat.nemoverse.io)
  - [RedirectURL/EndSessionEndpoint]: URL Schemes (example: nemo.app.demo.app)
  
#### AppAuth Framework Embed
<img width="460" alt="image" src="https://user-images.githubusercontent.com/94542020/206898183-f1be0527-6136-4e91-9f2e-174c2a3eaf77.png">


### API description and usage
#### Initialize NemoSDK
```objectivec
//AppDelegate.h
#import "NemoSDK.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate, LoginDelegate>
@end

//AppDelegate.m
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[NemoSDK sharedInstance] sdkInit];
    [NemoSDK sharedInstance].loginDelegate = self;
    return YES;
}

#pragma Login Delegate

- (void)onLoginFailure:(NSString *)message {
    NSLog(@"onLoginFailure = %@", message);
}

- (void)onLoginSuccess:(NSString *)access_token andIdToken:(NSString *)id_token {
    NSLog(@"onLoginSuccess = %@ - %@", access_token, id_token);
}

- (void)onLogoutFailure:(NSString *)message {
    NSLog(@"onLogoutFailure = %@", message);
}

- (void)onLogoutSuccess:(NSString *)message {
    NSLog(@"onLogoutSuccess = %@", message);
}
```

#### Authorization Interface
```objectivec
//ViewController.m
//return onLoginSuccess/onLoginFailure delegate
[[NemoSDK sharedInstance] login];

//return json string
[[NemoSDK sharedInstance] getUserInfo]

//use as onLogoutFailure/onLogoutSuccess Delegate
[[NemoSDK sharedInstance] logout];
```

By using the NemoSDK for iOS you agree to these terms.
