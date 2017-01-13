//
//  Student.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "Student.h"
#import "Person+Private.h"

@implementation Student


- (void)someMethod {
    [self somePrivateMethod];
    [super somePrivateMethod];
}

- (void)somePrivateMethod {
    [super somePrivateMethod];
    NSLog(@"override the someprivateMethod in subclass");
}

- (NSString *)description
{
    NSMutableString *result = [[NSMutableString alloc] init];
    [result appendString:[NSString stringWithFormat:@"The name is:%@",  name]];
    [result appendString:@"\n"];
    [result appendString:[NSString stringWithFormat:@"The _name is:%@",  _name]];
    return [NSString stringWithString:result];
}

@end
