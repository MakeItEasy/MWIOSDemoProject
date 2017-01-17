//
//  MW08_MyPresentationController.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/17.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW08_MyPresentationController.h"

@implementation MW08_MyPresentationController {
    UIView *dimmingView;
}

-(id) initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController {
    self = [super initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];
    if(self){
        dimmingView = [[UIView alloc] init];
        dimmingView.backgroundColor = [UIColor grayColor];
        dimmingView.alpha = 0.0;
        UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(p_handleTap:)];
        [dimmingView addGestureRecognizer:recognizer];
    }
    return self;
}

/// 点击dimmingView
- (void)p_handleTap:(UITapGestureRecognizer *)recognizer {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)presentationTransitionWillBegin
{
    dimmingView.frame = self.containerView.bounds;
    [self.containerView addSubview:dimmingView];
    [self.containerView addSubview:self.presentedView];
    
    id<UIViewControllerTransitionCoordinator> coordinator = self.presentingViewController.transitionCoordinator;
    
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        dimmingView.alpha = 0.5;
    } completion:nil];
}

- (void)presentationTransitionDidEnd:(BOOL)completed
{
    if(!completed){
        [dimmingView removeFromSuperview];
    }
}

- (void)dismissalTransitionWillBegin
{
    id<UIViewControllerTransitionCoordinator> coordinator = self.presentingViewController.transitionCoordinator;
    
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        dimmingView.alpha = 0.0;
    } completion:nil];
}

- (void)dismissalTransitionDidEnd:(BOOL)completed
{
    if(completed){
        [dimmingView removeFromSuperview];
    }
}

- (CGRect)frameOfPresentedViewInContainerView {
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat frameHeight = screenHeight - 64;
    CGFloat frameWidth = 200;
    return CGRectMake(screenWidth-frameWidth, screenHeight-frameHeight, frameWidth, frameHeight);
}

@end
