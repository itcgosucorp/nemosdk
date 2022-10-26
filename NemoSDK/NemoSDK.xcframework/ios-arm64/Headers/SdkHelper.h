//
//  SdkHelper.h
//  GameSDK
//
//  Created by Nero-Macbook on 11/1/21.
//

#import <UIKit/UIKit.h>

@interface SdkHelper : NSObject {
    
}
+ (SdkHelper *) sharedInstance;

- (void) showAlertMessage:(NSString *)withTitle
           andWithMessage:(NSString *)withMessage
              andCallback:(void (^)(UIAlertAction * _Nonnull action))withCallback;
- (void) showAlertMessage: (UIViewController *)_UIViewController
             andWithTitle:(NSString *)withTitle
           andWithMessage:(NSString *)withMessage
              andCallback:(void (^)(UIAlertAction * _Nonnull action))withCallback;

@end
