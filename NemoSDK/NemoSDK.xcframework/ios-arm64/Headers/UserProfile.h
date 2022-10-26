//
//  UserProfile.h
//  GameSDK
//
//  Created by Nero-Macbook on 11/3/21.
//
#import <Foundation/Foundation.h>
@interface UserProfile : NSObject
    @property (nonatomic,strong) NSDictionary *avatar;
    @property (nonatomic,strong) NSString *email;
    @property (nonatomic,assign) bool emailVerified;
    @property (nonatomic,strong) NSString *fullname;
    @property (nonatomic,strong) NSString *lmsUserId;
    @property (nonatomic,assign) bool metamaskLinked;
    @property (nonatomic,strong) NSString *myReferId;
    @property (nonatomic,strong) NSString *publicAddress;
    @property (nonatomic,strong) NSString *referAddress;
    @property (nonatomic,strong) NSString *referId;
    @property (nonatomic,assign) int roleId;
    @property (nonatomic,strong) NSString *sub;
@end
