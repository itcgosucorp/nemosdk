//
//  AuthUserDelegate.h
//  NemoSDK
//
//  Created by Nero-Macbook on 10/25/22.
//
#import "AuthResponse.h"

#pragma Auth User Delegate
@protocol AuthUserDelegate <NSObject>
@required
- (void) loginSuccess:(AuthResponse *)data;
- (void) loginFail:(NSError *) error;
- (void) getAuthUserSuccess:(UserProfile *)data;
- (void) getAuthUserFail:(NSError *) error;
@end
