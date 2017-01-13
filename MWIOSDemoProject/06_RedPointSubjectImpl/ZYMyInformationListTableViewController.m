//
//  ZYMyInformationListTableViewController.m
//  MyTestProject
//
//  Created by dairugang on 2017/1/3.
//  Copyright © 2017年 zhongyinginfo. All rights reserved.
//

#import "ZYMyInformationListTableViewController.h"
#import "ZYMessageCenter.h"


@interface ZYMyInformationListTableViewController ()

@end

@implementation ZYMyInformationListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) {
        if ([ZYMessageCenter sharedInstance].demoDataInformation2HasRead) {
            cell.detailTextLabel.text = @"未读";
            [ZYMessageCenter sharedInstance].informationMessageCount += 1;
            [ZYMessageCenter sharedInstance].myInformationMessageCount += 1;
        } else {
            cell.detailTextLabel.text = @"已读";
            [ZYMessageCenter sharedInstance].informationMessageCount -= 1;
            [ZYMessageCenter sharedInstance].myInformationMessageCount -= 1;
        }
        [ZYMessageCenter sharedInstance].demoDataInformation2HasRead = ![ZYMessageCenter sharedInstance].demoDataInformation2HasRead;
    } else {
        if ([ZYMessageCenter sharedInstance].demoDataInformation3HasRead) {
            cell.detailTextLabel.text = @"未读";
            [ZYMessageCenter sharedInstance].myInformationMessageCount += 1;
        } else {
            cell.detailTextLabel.text = @"已读";
            [ZYMessageCenter sharedInstance].myInformationMessageCount -= 1;
        }
        [ZYMessageCenter sharedInstance].demoDataInformation3HasRead = ![ZYMessageCenter sharedInstance].demoDataInformation3HasRead;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.detailTextLabel.text = [ZYMessageCenter sharedInstance].demoDataInformation2HasRead ? @"已读" : @"未读";
    } else {
        cell.detailTextLabel.text = [ZYMessageCenter sharedInstance].demoDataInformation3HasRead ? @"已读" : @"未读";
    }
    
    return cell;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
