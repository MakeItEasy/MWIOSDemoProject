//
//  ZYMessageCenter.h
//  MyTestProject
//
//  Created by dairugang on 2017/1/3.
//  Copyright © 2017年 zhongyinginfo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYMessageCenter : NSObject

@property (nonatomic, assign) NSInteger informationMessageCount;
@property (nonatomic, assign) NSInteger myInformationMessageCount;
@property (nonatomic, assign) NSInteger orderMessageCount;


@property (nonatomic, assign) BOOL demoDataInformation1HasRead;
@property (nonatomic, assign) BOOL demoDataInformation2HasRead;
@property (nonatomic, assign) BOOL demoDataInformation3HasRead;


@property (nonatomic, assign) BOOL demoDataOrder1HasRead;

+ (instancetype)sharedInstance;

@end
