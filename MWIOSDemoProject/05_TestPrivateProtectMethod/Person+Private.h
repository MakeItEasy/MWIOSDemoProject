//
//  Person+Private.h
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Person (Private)

@property (nonatomic, strong) NSString *privateVar1;

- (void)somePrivateMethod;

@end
