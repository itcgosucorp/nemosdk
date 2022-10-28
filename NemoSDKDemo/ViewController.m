//
//  ViewController.m
//  NemoSDKDemo
//
//  Created by Nero-Macbook on 10/26/22.
//

#import "ViewController.h"
#import "SdkHelper.h"

@interface ViewController () {
    BOOL isSignIn;
}
    
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NemoSDK sharedInstance] sdkInit:self];
}


- (IBAction)getUserInfo:(id)sender {
    NSLog(@"userInfo = %@", [[NemoSDK sharedInstance] getUserInfo]);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[[NemoSDK sharedInstance] getUserInfo] andCallback:nil];
}

- (IBAction)login:(id)sender {
    self->isSignIn = NO;
    [[NemoSDK sharedInstance] login];
}
- (IBAction)signOut:(id)sender {
    [[NemoSDK sharedInstance] logout];
}

- (void)onLoginFailure:(NSString *)message {
    NSLog(@"onLoginFailure = %@", message);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"onLoginFailure" andWithMessage:message andCallback:nil];
}

- (void)onLoginSuccess:(NSString *)access_token andIdToken:(NSString *)id_token {
    NSLog(@"onLoginSuccess = %@ - %@", access_token, id_token);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"onLoginSuccess" andWithMessage:access_token andCallback:nil];
}

- (void)onLogoutFailure:(NSString *)message {
    NSLog(@"onLogoutFailure = %@", message);
}

- (void)onLogoutSuccess:(NSString *)message {
    NSLog(@"onLogoutSuccess = %@", message);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"onLogoutSuccess" andWithMessage:message andCallback:nil];
}

@end
