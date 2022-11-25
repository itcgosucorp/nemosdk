//
//  AppDelegate.m
//  NemoSDKDemo
//
//  Created by Nero-Macbook on 10/26/22.
//

#import "AppDelegate.h"
#import "SdkHelper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[NemoSDK sharedInstance] sdkInit];
    [NemoSDK sharedInstance].loginDelegate = self;
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

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


@end
