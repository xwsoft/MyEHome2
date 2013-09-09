//
//  BIDFlipsideViewController.h
//  Utility Application
//
//  Created by 翟强 on 13-9-6.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDFlipsideViewController;

@protocol BIDFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(BIDFlipsideViewController *)controller;
@end

@interface BIDFlipsideViewController : UIViewController

@property (weak, nonatomic) id <BIDFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
