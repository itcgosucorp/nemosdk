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
   <key>NemoScope</key>
   <string>openid email phone_number profile offline_access</string>
   <key>NemoUrl</key>
   <string>https://test.nemoserver.io</string>
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
### AppAuth Framework Embed
![photo_2022-11-23_11-38-37](https://user-images.githubusercontent.com/94542020/203470313-a5eed93b-1e10-43cd-bee2-bf95c4bd5768.jpg)

# API description and usage (initSDK from AppDelegate)
## Initialize NemoSDK
```objectivec
//AppDelegate.m
#import "NemoSDK.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[NemoSDK sharedInstance] sdkInit:nil];
    return YES;
}
```
```objectivec
//ViewController.h
#import "NemoSDK.h"
@interface ViewController : UIViewController<LoginDelegate>

@end

//ViewController.m
# # Initialize GinSDK

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
[[NemoSDK sharedInstance] login:self andDelegate:self];

//return json string
[[NemoSDK sharedInstance] getUserInfo]

//use as onLogoutFailure/onLogoutSuccess Delegate
[[NemoSDK sharedInstance] logoutBackground:self andDelegate:self];
```

# API description and usage (No initSDK from AppDelegate)
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
