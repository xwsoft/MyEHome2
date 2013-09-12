//
//  MyELoginViewController.h
//  MyE
//
//  Created by Ye Yuan on 1/19/12.
//  Copyright (c) 2012 MyEnergy Domain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYEDataLoader.h"
#import "MBProgressHUD.h"

@class MYEAccountData;

@interface MYELoginViewController : UIViewController <UITextFieldDelegate, MYEDataLoaderDelegate, MBProgressHUDDelegate, UIAlertViewDelegate> {
    UIView *opaqueview;
    
    MBProgressHUD *HUD;
}

@property (nonatomic, retain) MYEAccountData *accountData;

@property (weak, nonatomic) IBOutlet UITextField *usernameInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;
@property (weak, nonatomic) IBOutlet UISwitch *rememberMeInput;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)login:(id)sender;


- (void)keyboardWillHide:(NSNotification *)notification;
- (void)keyboardWillShow:(NSNotification *)notification;
- (void)hideKeyboardBeforeResignActive:(NSNotification *)notification;

// 加载持久存储的一下设置
-(void)loadSettings;
-(void)saveSettings;
@end
