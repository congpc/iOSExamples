//
//  StoryBoardViewControllerTests.m
//
//  Created by Pham Chi Cong on 4/18/18.
//  Copyright © 2018 congpc.ios. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LYTLayoutTestCase.h"
#import "StoryBoardViewController+UITest.h"
#import "UIView+LYTFrameComparison.h"

@interface StoryBoardViewControllerTests : LYTLayoutTestCase

@end

@implementation StoryBoardViewControllerTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testStoryBoardViewController {
    [self runLayoutTestsWithViewProvider:[StoryBoardViewController class]
                              validation:^(UIView * view, NSDictionary * data, id context) {
                                  // Add your custom tests here.
                                  UILabel* topLeft = [view viewWithTag:10];
                                  UILabel* topRight = [view viewWithTag:11];
                                  UILabel* bottomLeft = [view viewWithTag:13];
                                  UILabel* bottomRight = [view viewWithTag:14];
                                  
                                  BOOL result1 = [topLeft lyt_topAligned:view];
                                  BOOL result2 = [topRight lyt_topAligned:view];
                                  BOOL result3 = [bottomLeft lyt_bottomAligned:view];
                                  BOOL result4 = [bottomRight lyt_bottomAligned:view];
                                  
                                  XCTAssertTrue(result1,@"Top left");
                                  XCTAssertTrue(result2,@"Top right");
                                  XCTAssertTrue(result3,@"Bottom left");
                                  XCTAssertTrue(result4,@"Bottom right");
                              }];
}

@end
