
#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {
}

@property (nonatomic, strong) NSString    *userID;
@property (nonatomic, strong) NSString    *userName;
@property (nonatomic, strong) NSString    *access_token;

@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *aiv_loading;

@property (retain, nonatomic) IBOutlet UIButton *btn_Floating;
@property (retain, nonatomic) IBOutlet UIButton *btn_shareLink;
@property (retain, nonatomic) IBOutlet UIButton *btn_shareVideo;
@property (retain, nonatomic) IBOutlet UIButton *btn_invitefriend;
@property (retain, nonatomic) IBOutlet UIButton *btn_report;
@property (retain, nonatomic) IBOutlet UIButton *btn_clear;
@property (retain, nonatomic) IBOutlet UIButton *btn_IAP;
@property (retain, nonatomic) IBOutlet UILabel  *lblName;
@property (retain, nonatomic) IBOutlet UITextField  *edtTokenPush;

@property (retain, nonatomic) IBOutlet UIView *viewVaoGame;

@end
