//
//  MWIOSDemoProjectTests.m
//  MWIOSDemoProjectTests
//
//  Created by dairugang on 2017/1/13.
//  Copyright © 2017年 dairugang. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Person.h"
#import "Student.h"

@interface MWIOSDemoProjectTests : XCTestCase

@end

@implementation MWIOSDemoProjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


- (void)testVar {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    
    Person *person1 = [[Person alloc] init];
    [person1 setName:@"hello world"];
    NSLog(@"%@", person1);
    NSLog(@"%@", person1.name);
    
    Student *s1 = [[Student alloc] init];
    [s1 someMethod];
    
    
}

- (void)testArray {
    NSArray *tempArray = [[NSArray alloc] init];
    BOOL result = ([tempArray class] == [NSArray class]);
    NSLog(@"======= %d", result);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
