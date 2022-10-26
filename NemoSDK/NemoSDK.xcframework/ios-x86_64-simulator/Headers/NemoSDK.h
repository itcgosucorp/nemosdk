//
//  NemoSDK.h
//  NemoTest
//
//  Created by Nero-Macbook on 10/23/22.
//

#import <Foundation/Foundation.h>
#import "UserProfile.h"
#import "AuthUserDelegate.h"

@interface NemoSDK : NSObject{
}

+ (NemoSDK *)sharedInstance;
-(void)sdkInit;
-(void)authorization:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
-(void)authorizationSimple:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
-(void)getMe:(AuthResponse *)authToken andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
- (void) signInSimpleWithViewController:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
- (void) signInWithViewController:(UIViewController *)viewController andDelegate:(id<AuthUserDelegate>) _authUserDelegate;
- (void)signOut:(UIViewController *)viewController;
@end
