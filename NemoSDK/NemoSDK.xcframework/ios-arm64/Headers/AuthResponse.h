//
//  AuthResponse.h
//  NemoTest
//
//  Created by Nero-Macbook on 10/23/22.
//
#import <Foundation/Foundation.h>

@interface AuthResponse : NSObject
    @property (nonatomic,strong) NSString *accessToken;
    @property (nonatomic,assign) int expiresIn;
    @property (nonatomic,strong) NSString *idToken;
    @property (nonatomic,strong) NSString *refreshToken;
    @property (nonatomic,strong) NSString *scope;
    @property (nonatomic,strong) NSString *tokenType;
@end
