//
//  MW08_SlideInPresentationAnimator.h
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/17.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MW08_SlideInPresentationAnimator : NSObject <UIViewControllerAnimatedTransitioning>

- (instancetype)initWithPresentation:(BOOL)isPresentation;

@end
