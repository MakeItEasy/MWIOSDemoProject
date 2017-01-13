//
//  Person+Private.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "Person+Private.h"

@implementation Person (Private)

@dynamic privateVar1;

- (void)somePrivateMethod {
    NSLog(@"some private method");
}

@end
