//
//  MW08_SecondViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/17.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW08_SecondViewController.h"
#import "MW08_MyPresentationController.h"
#import "MW08_ThirdViewController.h"

@interface MW08_SecondViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation MW08_SecondViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.transitioningDelegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Second";
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 50, 50)];
    [button1 setTitle:@"Tap me" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(p_pushViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

- (void)p_pushViewController {
    if (self.navigationController) {
        [self.navigationController pushViewController:[[MW08_ThirdViewController alloc] init] animated:YES];
    }
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

#pragma mark - UIViewControllerTransitioningDelegate
- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source {
    MW08_MyPresentationController *pVC = [[MW08_MyPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    
    return pVC;
}


@end
