//
//  MW09_MainViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/3/20.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW09_MainViewController.h"
#import "MW09_CustomView.h"

@interface MW09_MainViewController ()

@end

@implementation MW09_MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MW09_CustomView *customView = [[MW09_CustomView alloc] initWithFrame:CGRectMake(0, 64, 200, 200)];
    [self.view addSubview:customView];
    customView.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
