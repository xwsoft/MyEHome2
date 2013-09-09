//
//  BIDViewController.m
//  SimpleTable
//
//  Created by 翟强 on 13-9-3.
//  Copyright (c) 2013年 翟强. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"0001",@"002",@"003",@"004",@"005",@"006",@"007",@"008",@"009",@"010",nil];
    self.listData = array;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listData count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *SimpleTableIdentifier = @"SimplerTableIdentier";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier];
    }
//    NSUInteger row =[indexPath row];
    NSString *string = [NSString stringWithString:@"0001"];
//    cell.textLabel.text = [_listData objectAtIndex:row];
    cell.textLabel.text = string;
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
    cell.detailTextLabel.text = @"my lost";
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 10;
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row = [indexPath row];
    if (row == 2) {
        return nil;
    }
    return indexPath;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = [indexPath row];
    NSString *rowValue = [_listData objectAtIndex:row];
    NSString *msg = [[NSString alloc]initWithFormat:@"You select %@",rowValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"hello" message:msg delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
