//
//  ViewController.m
//  NemoSDKDemo
//
//  Created by Nero-Macbook on 10/26/22.
//

#import "ViewController.h"
#import "SdkHelper.h"

@interface ViewController () {
    AuthResponse *authResponse;
    BOOL isSignIn;
}
    
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


- (IBAction)signInSimpleAndGetMe:(id)sender {
    self->isSignIn = YES;
    [[NemoSDK sharedInstance] signInSimpleWithViewController:self andDelegate:self];
}

- (IBAction)signInAndGetMe:(id)sender {
    self->isSignIn = YES;
    [[NemoSDK sharedInstance] signInWithViewController:self andDelegate:self];
}

- (IBAction)getMe:(id)sender {
    [[NemoSDK sharedInstance] getMe:self->authResponse andDelegate:self];
}

- (IBAction)authorizationSimple:(id)sender {
    self->isSignIn = NO;
    [[NemoSDK sharedInstance] authorizationSimple:self andDelegate:self];
}

- (IBAction)authorization:(id)sender {
    self->isSignIn = NO;
    [[NemoSDK sharedInstance] authorization:self andDelegate:self];
}
- (IBAction)signOut:(id)sender {
    [[NemoSDK sharedInstance] signOut:self];
}

- (void)getAuthUserFail:(NSError *)error {
    NSLog(@"getAuthUserFail = %@", error);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[NSString stringWithFormat:@"Lấy thông tin thất bại, %@", error.description] andCallback:nil];
    
}

- (void)getAuthUserSuccess:(UserProfile *)data {
    NSLog(@"getAuthUserSuccess = %@", data);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[NSString stringWithFormat:@"Xin chao, %@", data.email] andCallback:nil];
}

- (void)loginFail:(NSError *)error {
    NSLog(@"loginFail = %@", error);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[NSString stringWithFormat:@"Dang nhap that bai, %@", error.description] andCallback:nil];
}

- (void)loginSuccess:(AuthResponse *)data {
    NSLog(@"loginSuccess = %@", data.accessToken);
    if(!self->isSignIn) {
        [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[NSString stringWithFormat:@"Dang nhap thanh cong"] andCallback:nil];
    }
    self->authResponse = data;
}

@end
