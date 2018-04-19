//
//  CustomViewTests.m
//
//  Created by Pham Chi Cong on 4/17/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LYTLayoutTestCase.h"
#import "CustomView+UITest.h"

@interface CustomViewTests : LYTLayoutTestCase

@end

@implementation CustomViewTests

- (void)setUp {
    [super setUp];
    
}

- (void)tearDown {
    
    [super tearDown];
}

- (void)testCustomView {
    [self runLayoutTestsWithViewProvider:[CustomView class]
                              validation:^(UIView * view, NSDictionary * data, id context) {
                                  // Add your custom tests here.
                              }];
}

@end



