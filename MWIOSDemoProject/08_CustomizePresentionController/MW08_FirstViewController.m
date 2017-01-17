//
//  MW08_FirstViewController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/17.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW08_FirstViewController.h"
#import "MW08_SecondViewController.h"
#import "MW08_MyPresentationController.h"
#import "MW08_SlideInPresentationAnimator.h"

@interface MW08_FirstViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation MW08_FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 50)];
    [button1 setTitle:@"Tap me" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(p_showCustomPresentationVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

- (void)p_showCustomPresentationVC {
    MW08_SecondViewController *vc = [[MW08_SecondViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationCustom;
    
    
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    navVC.modalPresentationStyle = UIModalPresentationCustom;
    navVC.transitioningDelegate = self;
    
    [self presentViewController:navVC animated:YES completion:nil];
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

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[MW08_SlideInPresentationAnimator alloc] initWithPresentation:YES];

}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[MW08_SlideInPresentationAnimator alloc] initWithPresentation:NO];
}

@end
