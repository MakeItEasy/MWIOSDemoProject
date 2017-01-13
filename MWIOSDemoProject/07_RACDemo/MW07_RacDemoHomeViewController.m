//
//  MW07_RacDemoHomeViewController.m
//  MyTestProject
//
//  Created by dairugang on 2017/1/4.
//  Copyright © 2017年 zhongyinginfo. All rights reserved.
//

#import "MW07_RacDemoHomeViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface MW07_RacDemoHomeViewController ()

@end

@implementation MW07_RacDemoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)testConcatTapped:(id)sender {
    RACSubject *subject1 = [RACSubject subject];
    RACSubject *subject2 = [RACSubject subject];
    RACSubject *concatSubject = [subject1 concat:subject2];
    [concatSubject subscribeNext:^(id x) {
        NSLog(@"the x is %@(class:%@): in next block!", x, [x class]);
    } completed:^{
        NSLog(@"completed");
    }];
    
    [subject1 sendNext:@(10)];
    [subject1 sendNext:@(20)];
    
    [subject2 sendNext:@"abc"];
    [subject1 sendNext:@(30)];
    [subject1 sendCompleted];
    [subject2 sendNext:@"def"];
    [subject2 sendCompleted];
}

- (void)mie_testSequence {
    RACSignal *signal1 = @[@1,@2,@3].rac_sequence.signal;
    [signal1 subscribeNext:^(id x) {
        NSLog(@"%@", x);
    }];
}
- (IBAction)testMergeTapped:(id)sender {
    RACSubject *subject1 = [RACSubject subject];
    RACSubject *subject2 = [RACSubject subject];
    RACSignal *mergedSignal = [subject1 merge:subject2];
    [mergedSignal subscribeNext:^(id x) {
        NSLog(@"===[testMergeTapped]===%@(%@)", x, [x class]);
    } completed:^{
        NSLog(@"===[testMergeTapped]===completed");
    }];
    //[subject1 sendNext:@(10)];
    [subject2 sendNext:@(20)];
    [subject2 sendCompleted];
    [subject1 sendCompleted];
}

@end
