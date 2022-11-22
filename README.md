# Nemo iOS SDK

**This guide shows you how to integrate your iOS app using the NemoSDK for iOS. The NemoSDK for iOS consists of the following component SDKs:**
  - The NemoSDK Core
  - OpenId: AppAuth.framework
  

### FEATURES:
  - Login: Authenticate people with NemoID credentials.
  - You will need some included keys: ClientID and Url Scheme into info.plist
  
# Integrate

- Embed NemoSDK latest version and Third party framework into your project
- Some other libraries: 
  - AppAuth.framework

### Configure NemoSignIn in your project (default info.plist)
  ```xml
   <key>ClientID</key>
   <string>[ClientID]</string>
   <key>CFBundleURLTypes</key>
   <array>
    <dict>
       <key>CFBundleURLSchemes</key>
       <array>
          <string>[NemoUrl Scheme]</string>
       </array>
    </dict>
   </array>
  ```
# API description and usage
## Initialize NemoSDK
```objectivec
//ViewController.h
#import "NemoSDK.h"
@interface ViewController : UIViewController<LoginDelegate>

@end
```
```objectivec
//ViewController.m
# # Initialize GinSDK
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NemoSDK sharedInstance] sdkInit:self];
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

## Authorization Interface
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
