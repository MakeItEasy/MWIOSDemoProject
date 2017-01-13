//
//  ZYMessageSubject.h
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ZYMessageSubject : NSObject

@property (nonatomic, assign, readonly) NSInteger messageTotalCount;

- (void)plusOne;

- (void)minusOne;



@end
