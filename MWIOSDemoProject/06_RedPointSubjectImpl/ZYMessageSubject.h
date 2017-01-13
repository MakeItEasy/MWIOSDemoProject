//
//  ZYMessageSubject.h
//  MyTestProject
//
//  Created by dairugang on 2017/1/3.
//  Copyright © 2017年 zhongyinginfo. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ZYMessageSubject : NSObject

@property (nonatomic, assign, readonly) NSInteger messageTotalCount;

- (void)plusOne;

- (void)minusOne;



@end
