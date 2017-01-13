//
//  Person.h
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    // 外部可以通过 object->age 来访问该实例变量
    @public
    NSInteger age;

    @protected
    NSString *name;
    NSString *_name;
    
    @private
    NSString *desc;
}

//- (void)setName:(NSString *)theName;

@property (nonatomic, copy) NSString *name;


@end
