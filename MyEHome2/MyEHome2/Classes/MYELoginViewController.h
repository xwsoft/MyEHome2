//
//  MYELoginViewController.h
//  MyEHome2
//
//  Created by 翟强 on 13-9-12.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYEDataLoader.h"
#import "MBProgressHUD.h"
#import "MYEUtil.h"
@interface MYELoginViewController : UIViewController<UITextFieldDelegate, MYEDataLoaderDelegate, MBProgressHUDDelegate, UIAlertViewDelegate> {
//    UIView *opaqueview;
    
    MBProgressHUD *HUD;}
@property (strong, nonatomic) IBOutlet UITextField *nameTxt;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxt;
@property (strong, nonatomic) IBOutlet UISwitch *remenber;
- (IBAction)login:(UIButton *)sender;
-(IBAction)backgroundTab:(id)sender;
@end
