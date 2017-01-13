//
//  MW04_FirstViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW04_FirstViewController.h"
#import "JZNavigationExtension.h"

@interface MW04_FirstViewController ()

@end

@implementation MW04_FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationController.jz_wantsNavigationBarVisible = YES;
    self.navigationController.jz_navigationBarTransitionStyle = JZNavigationBarTransitionStyleDoppelganger;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES];
//}
//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    [self.navigationController setNavigationBarHidden:NO];
//}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//    segue.destinationViewController.jz_navigationBarBackgroundHidden = YES;
//    segue.destinationViewController.jz_wantsNavigationBarVisible = NO;
}


@end
