//
//  NemoSDK.h
//  NemoTest
//
//  Created by Nero-Macbook on 10/23/22.
//

#import <UIKit/UIKit.h>
#import <NemoSDK/LoginDelegate.h>

@interface NemoSDK : NSObject{
}

+ (NemoSDK *)sharedInstance;
@property (nonatomic,strong) id<LoginDelegate> loginDelegate;

-(void)sdkInit;
- (NSString *)getUserInfo;

- (void)login;
- (void)logout;
//with uiViewController
- (void)login:(UIViewController *)viewController;
- (void)logout:(UIViewController *)viewController;


- (NSString *)getRefreshToken;
- (NSString *)getIdToken;
@end
