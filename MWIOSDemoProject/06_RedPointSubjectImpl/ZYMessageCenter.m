//
//  ZYMessageCenter.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "ZYMessageCenter.h"

@interface ZYMessageCenter () {
}

@end

@implementation ZYMessageCenter

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static ZYMessageCenter *sharedInstance;

    dispatch_once(&onceToken, ^{
        sharedInstance = [[ZYMessageCenter alloc] init];
        sharedInstance.informationMessageCount = 2;
        sharedInstance.myInformationMessageCount = 2;
        sharedInstance.orderMessageCount = 1;
    });
    return sharedInstance;
}

@end
