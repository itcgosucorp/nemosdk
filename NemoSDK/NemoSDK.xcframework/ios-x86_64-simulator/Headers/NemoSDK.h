//
//  NemoSDK.h
//  NemoTest
//
//  Created by Nero-Macbook on 10/23/22.
//

#import <Foundation/Foundation.h>
#import "LoginDelegate.h"

@interface NemoSDK : NSObject{
}

+ (NemoSDK *)sharedInstance;
@property (nonatomic,strong) UIViewController *viewController;
@property (nonatomic,strong) id<LoginDelegate> loginDelegate;

-(void)sdkInit:(UIViewController<LoginDelegate> *)viewControllerDelegate;
-(void)sdkInit:(UIViewController *)viewController andLoginDelegate:(id<LoginDelegate>) loginDelegate;
- (void)login;
- (void)logout;
- (NSString *)getUserInfo;

- (void) login:(UIViewController<LoginDelegate> *)viewControllerDelegate;
- (void)login:(UIViewController *)viewController andDelegate:(id<LoginDelegate>) loginDelegate;
- (void)logout:(UIViewController *)viewController andDelegate:(id<LoginDelegate>) loginDelegate;
- (void)logoutBackground:(UIViewController *)viewController andDelegate:(id<LoginDelegate>) loginDelegate;
@end
