//
//  BIDFlipsideViewController.m
//  Utility Application
//
//  Created by 翟强 on 13-9-6.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import "BIDFlipsideViewController.h"

@interface BIDFlipsideViewController ()

@end

@implementation BIDFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
