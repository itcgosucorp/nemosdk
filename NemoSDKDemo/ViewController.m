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
//    [[NemoSDK sharedInstance] sdkInit:self];
}


- (IBAction)getUserInfo:(id)sender {
    NSLog(@"userInfo = %@", [[NemoSDK sharedInstance] getUserInfo]);
    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"Alert" andWithMessage:[[NemoSDK sharedInstance] getUserInfo] andCallback:nil];
}

- (IBAction)login:(id)sender {
    self->isSignIn = NO;
//    [[NemoSDK sharedInstance] login];
    [[NemoSDK sharedInstance] login];
}
- (IBAction)signOut:(id)sender {
//    [[NemoSDK sharedInstance] logout:self andDelegate:self];
    [[NemoSDK sharedInstance] logout];
}

@end
