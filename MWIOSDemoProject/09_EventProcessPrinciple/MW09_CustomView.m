//
//  MW09_CustomView.m
//  MWIOSDemoProject
//
//  Created by dairugang on 2017/3/20.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "MW09_CustomView.h"

@interface MW09_CustomView ()
@property (nonatomic, strong) UIView *viewA;
@property (nonatomic, strong) UIView *viewB;
@property (nonatomic, strong) UIView *viewBA;

@end


@implementation MW09_CustomView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _viewA = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _viewA.backgroundColor = [UIColor redColor];
        [self addSubview:_viewA];
        _viewB = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
        _viewB.backgroundColor = [UIColor blueColor];
        [self addSubview:_viewB];
        _viewB.bounds = CGRectMake(-10, -10, 100, 100);
        _viewBA = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _viewBA.backgroundColor = [UIColor whiteColor];
        [_viewB addSubview:_viewBA];
    }
    return self;
}


// 覆盖父类方法
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"param point x: %f, y: %f", point.x, point.y);
    CGPoint pointA = [_viewA convertPoint:point fromView:self];
    CGPoint pointB = [_viewB convertPoint:point fromView:self];
    // 测试同级的view
    CGPoint pointB2 = [_viewB convertPoint:pointA fromView:_viewA];
    // 测试隔了一级的view
    CGPoint pointBA = [_viewBA convertPoint:point fromView:self];

    NSLog(@"pointA x: %f, y: %f", pointA.x, pointA.y);
    NSLog(@"pointB x: %f, y: %f", pointB.x, pointB.y);
    NSLog(@"pointB2 x: %f, y: %f", pointB2.x, pointB2.y);
    NSLog(@"pointBA x: %f, y: %f", pointBA.x, pointBA.y);

    return nil;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
