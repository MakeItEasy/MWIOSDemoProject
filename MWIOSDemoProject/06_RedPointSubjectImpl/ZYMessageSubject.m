//
//  ZYMessageSubject.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "ZYMessageSubject.h"

@interface ZYMessageSubject () {
    NSInteger _messageTotalCount;
    RACSubject *_subject;
}

@end

@implementation ZYMessageSubject

- (instancetype)init {
    self = [super init];
    if (self) {
        _messageTotalCount = 0;
        _subject = [RACSubject subject];
    }
    return self;
}

- (void)plusOne {
    _messageTotalCount++;
    [_subject sendNext:@(_messageTotalCount)];
}

- (void)minusOne {
    _messageTotalCount--;
    if (_messageTotalCount < 0) {
        _messageTotalCount = 0;
    }
    [_subject sendNext:@(_messageTotalCount)];
}

- (void)subscribeNext:(void (^)(id x))nextBlock {
    [_subject subscribeNext:nextBlock];
}

@end
