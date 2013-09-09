//
//  BIDViewController.h
//  SimpleTable
//
//  Created by 翟强 on 13-9-3.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSArray *listData;
@end
