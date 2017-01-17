//
//  MainTableViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MainTableViewController.h"
#import "MW08_FirstViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 6:
        {
            // 08_自定义PresentationController
            MW08_FirstViewController *vc = [[MW08_FirstViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}


@end
