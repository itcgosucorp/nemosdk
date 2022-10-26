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
## Initialize GinSDK
```objectivec
#import "NemoSDK.h"
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[NemoSDK sharedInstance] sdkInit];
    //...
}
```
## Initialize SDK delegate
```objectivec
//ViewController.h
#import "NemoSDK.h"
@interface ViewController : UIViewController<AuthUserDelegate>

@end
```
```objectivec
//ViewController.m
#pragma Auth User Delegate
- (void)getAuthUserFail:(NSError *)error {
    NSLog(@"getAuthUserFail = %@", error);
}

- (void)getAuthUserSuccess:(UserProfile *)data {
    NSLog(@"getAuthUserSuccess = %@", data);
}

- (void)loginFail:(NSError *)error {
    NSLog(@"loginFail = %@", error);
}

- (void)loginSuccess:(AuthResponse *)data {
    NSLog(@"loginSuccess = %@", data.accessToken);
}
```

## Authorization Interface
```objectivec
//return authorization token
-(void)authorization:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
-(void)authorizationSimple:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;

//authorization token and return user profile
-(void)getMe:(AuthResponse *)authToken andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
- (void) signInSimpleWithViewController:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
- (void) signInWithViewController:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;

//use as Logout Delegate
- (void)signOut:(UIViewController *)viewController;
```

By using the NemoSDK for iOS you agree to these terms.
