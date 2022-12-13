
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPhone)
#define IS_IPHONE (!IS_IPAD)

#import "MainViewController.h"
#import "NemoSDK/NemoSDK.h"
#import "NemoSDKTracking/NemoSDKTracking.h"
#import "NemoSDK/SdkConfig.h"


@interface MainViewController ()<LoginDelegate>

@end

@implementation MainViewController

#pragma Login Delegate

- (void)onLoginFailure:(NSString *)message {
    NSLog(@"onLoginFailure = %@", message);
//    [[SdkHelper sharedInstance] showAlertMessage:self andWithTitle:@"onLoginFailure" andWithMessage:message andCallback:nil];
}

- (void)onLoginSuccess:(NSString *)access_token andIdToken:(NSString *)id_token {
    NSLog(@"onLoginSuccess = %@ - %@", access_token, id_token);
    [[NemoSDKTracking AppsFlyer] trackingEventLoginOnAF:@"userId" andAccount:@"neropro"];
    [[NemoSDKTracking AppsFlyer] trackingEventOnAF:@"event_abc" withValues:@{
        @"key1": @"nero1",
        @"key2": @"nero2"
    }];
    [[NemoSDKTracking AppsFlyer] trackingLevelArchiveEventOnAF:@"userId" andAccount:@"nerocasten" andLevel:@"12301"];
}

- (void)onLogoutFailure:(NSString *)message {
    NSLog(@"onLogoutFailure = %@", message);
}

- (void)onLogoutSuccess:(NSString *)message {
    NSLog(@"onLogoutSuccess = %@", message);
}

- (IBAction)btnSignIn:(id)sender {
    [[NemoSDK sharedInstance] login];
}


- (IBAction)btnUserInfo:(id)sender {
    NSLog(@"userInfo = %@", [[NemoSDK sharedInstance] getUserInfo]);
    NSLog(@"refreshToken = %@", [[NemoSDK sharedInstance] getRefreshToken]);
    [self callTrackingFirebaseExample];
}
- (IBAction)btnLogout:(id)sender {
    [[NemoSDK sharedInstance] logout];
}

- (void)viewDidLoad
{
    NSLog(@"load view");
    [NemoSDK sharedInstance].loginDelegate = self;
    [super viewDidLoad];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (void)OrientationDidChange:(NSNotification*)notification
{
    //    CGSize size = [[UIScreen mainScreen] bounds].size;
    //    CGRect frame = self.view.frame;
    //    if(size.width == frame.size.width)
    //        return;
    
    //NSLog(@"w = %f, h = %f", size.width, size.height);
}
- (void) callTrackingFirebaseExample {
    //tracking start trial
    [[NemoSDKTracking Firebase] trackingEventOnFirebase:@"eventName" parameters:@{@"eventEventLogKey":@"eventEventLogValue"}];
    [[NemoSDKTracking Firebase] trackingScreenOnFirebase:@"screenName" screenClass:@"screenClass"];
    [[NemoSDKTracking Firebase] setUserPropertiesOnFirebase:@"userValue" forName:@"usernameName"];
    //    subscribe
    [[NemoSDKTracking Firebase] FirebaseSubscribeToTopic:@"topicName"];
    [[NemoSDKTracking Firebase] FirebaseUnSubscribeToTopic:@"topicName"];
}

//=========== Payment Apple IAP ==============//
- (IBAction) callIAP:(id)sender
{
    
}

#pragma Click PlayGame

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
@end
