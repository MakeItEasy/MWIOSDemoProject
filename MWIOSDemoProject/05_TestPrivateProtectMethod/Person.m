//
//  Person.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "Person.h"
#import "Person+Private.h"

@implementation Person

@synthesize name;

- (NSString *)description
{
    NSMutableString *result = [[NSMutableString alloc] init];
    name = @"miaomiao";
    [result appendString:[NSString stringWithFormat:@"The name is:%@",  name]];
    [result appendString:@"\n"];
    [result appendString:[NSString stringWithFormat:@"The _name is:%@",  _name]];
    // 以下self.privateVar1 会报错 -[Person privateVar1]: unrecognized selector sent to instance 0x60800004bee0"
//    [result appendString:@"\n"];
//    [result appendString:[NSString stringWithFormat:@"The _privateVar1 is:%@",  self.privateVar1]];
    return [NSString stringWithString:result];
}

//- (void)setName:(NSString *)theName {
//    name = theName;
//}

- (void)mw_methodInParentClass {
    NSLog(@"private method in Person class");
}

@end
