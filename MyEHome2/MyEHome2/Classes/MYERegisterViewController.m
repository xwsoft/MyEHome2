//
//  MYERegisterViewController.m
//  MyEHome2
//
//  Created by 翟强 on 13-9-12.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import "MYERegisterViewController.h"

@interface MYERegisterViewController ()

@end

@implementation MYERegisterViewController

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

- (IBAction)btnPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
