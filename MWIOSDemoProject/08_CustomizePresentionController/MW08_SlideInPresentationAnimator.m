//
//  MW08_SlideInPresentationAnimator.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/17.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW08_SlideInPresentationAnimator.h"

@interface MW08_SlideInPresentationAnimator () {
    BOOL _isPresentation;
}

@end

@implementation MW08_SlideInPresentationAnimator

- (instancetype)initWithPresentation:(BOOL)isPresentation {
    self = [super init];
    if (self) {
        _isPresentation = isPresentation;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    NSString *key = _isPresentation ? UITransitionContextToViewControllerKey : UITransitionContextFromViewControllerKey;
    
    UIViewController *controller = [transitionContext viewControllerForKey:key];
    CGRect presentedFrame = [transitionContext finalFrameForViewController:controller];
    CGRect dismissedFrame = presentedFrame;
    
    // TODO dairg 判断方向
    // right
    dismissedFrame.origin.x = transitionContext.containerView.frame.size.width;

    CGRect initialFrame = _isPresentation ? dismissedFrame : presentedFrame;
    CGRect finalFrame = _isPresentation ? presentedFrame : dismissedFrame;
    
    NSTimeInterval animationDuration = [self transitionDuration:transitionContext];
    controller.view.frame = initialFrame;
    [UIView animateWithDuration:animationDuration animations:^{
        controller.view.frame = finalFrame;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:finished];
    }];  
    
}


@end
