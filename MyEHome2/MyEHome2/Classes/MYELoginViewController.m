//
//  MYELoginViewController.m
//  MyEHome2
//
//  Created by 翟强 on 13-9-12.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import "MYELoginViewController.h"

@interface MYELoginViewController ()

@end

@implementation MYELoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)backgroundTab:(id)sender{
    [_nameTxt resignFirstResponder];
    [_passwordTxt resignFirstResponder];
}

- (IBAction)login:(UIButton *)sender {
    // 如果用户名和密码的输入不足长度，提示后退出
    if([self.nameTxt.text  length] < 4 || [self.passwordTxt.text length] < 6) {
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"警告！"
                                                      message:@"用户名或密码错误"
                                                     delegate:nil
                                            cancelButtonTitle:@"知道了"
                                            otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    
    
//    [self saveSettings];
    
    /* 这段语句用于根据标示符，从Storyboard生成一个新的标示符为
     “MainTabViewController”的TabBarController,
     并present它。必须在Storyboard里面为这个TabBarController输入了标示符。
     这些语句和最后面的语句功能相同。
     UIStoryboard *story = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
     UITabBarController *rootViewController = [story     instantiateViewControllerWithIdentifier:@"MainTabViewController"];
     [self presentViewController:rootViewController animated:YES completion: nil];
     */
    
    
    ///////////////////////////////////////////////////////////////////////
    // Demo 用户登录
//    if ( [self.usernameTxt.text caseInsensitiveCompare:@"demo"] == NSOrderedSame) {
//        MYEAccountData *anAccountData = [[MyEAccountData alloc] init];
//        
//        self.accountData = anAccountData;
//        
//        [self performSegueWithIdentifier:@"ShowMainTabViewDirectly" sender:self];
//        
//        return;
//    }
    ///////////////////////////////////////////////////////////////////////
    
    // 1.判断是否联网：
    if (![MYEDataLoader isConnectedToInternet]) {
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"警告"
                                                      message:@"您的设备没有联网"
                                                     delegate:nil
                                            cancelButtonTitle:@"知道了"
                                            otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    if(HUD == nil) {
        HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
        //        HUD.dimBackground = YES; //容易产生灰条
        HUD.delegate = self;
    } else
        [HUD show:YES];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@?username=%@&password=%@&type=1", URL_FOR_LOGIN, self.nameTxt.text, self.passwordTxt.text] ;
    MYEDataLoader *downloader = [[MYEDataLoader alloc] initLoadingWithURLString:urlStr postData:nil delegate:self loaderName:@"LoginDownloader" userDataDictionary:nil];
    NSLog(@"downloader.name is  %@ urlStr =  %@",downloader.name, urlStr);

}
@end
