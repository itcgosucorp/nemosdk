//
//  NemoSDKTracking.h
//  NemoSDKTracking
//
//  Created by Nero-Macbook on 12/9/22.
//
#import <UIKit/UIKit.h>
#import <NemoSDKTracking/AppsflyerManager.h>

@interface NemoSDKTracking : NSObject{
}

+ (NemoSDKTracking *)sharedInstance;
+ (AppsflyerManager *)AppsFlyer;
- (void)initTracking:(UIApplication *)application;

@end
