//
//  ZYTabBusinessTableViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "ZYTabBusinessTableViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "ZYMessageCenter.h"

@interface ZYTabBusinessTableViewController ()

@end

@implementation ZYTabBusinessTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *item = self.tabBarController.tabBar.items[0];
//    RAC(item, badgeValue) = [RACObserve([ZYMessageCenter sharedInstance], informationMessageCount) map:^id(id value) {
//        if ([value integerValue] > 0) {
//            return [NSString stringWithFormat:@"%@", value];
//        }
//        return nil;
//    }];
    
    RAC(item, badgeValue) = [RACSignal combineLatest:@[RACObserve([ZYMessageCenter sharedInstance], informationMessageCount),
                                                       RACObserve([ZYMessageCenter sharedInstance], orderMessageCount)] reduce:^id{
                                                           NSInteger count = [ZYMessageCenter sharedInstance].informationMessageCount + [ZYMessageCenter sharedInstance].orderMessageCount;
                                                           if (count > 0) {
                                                               return [NSString stringWithFormat:@"%ld", count];
                                                           }
                                                           return nil;
    }];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld", indexPath.row);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    NSLog(@"%@",  cell.textLabel.text);
    NSLog(@"%@",  cell.detailTextLabel.text);
    if (indexPath.row == 0) {
        RAC(cell.detailTextLabel, text) = [RACObserve([ZYMessageCenter sharedInstance], informationMessageCount) map:^id(id value) {
            NSInteger count = [value integerValue];
            return (count > 0) ? [NSString stringWithFormat:@"%ld", count] : @"";
        }];
    } else {
        RAC(cell.detailTextLabel, text) = [RACObserve([ZYMessageCenter sharedInstance], orderMessageCount) map:^id(id value) {
            NSInteger count = [value integerValue];
            return (count > 0) ? [NSString stringWithFormat:@"%ld", count] : @"";
        }];
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
