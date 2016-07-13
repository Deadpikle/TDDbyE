//
//  ChapterOne.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Dollar.h"

@interface ChapterOne : XCTestCase

@end

@implementation ChapterOne

- (void)testMultiplication {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    Dollar *five = [[Dollar alloc] initWithAmount:5];
    [five times:2];
    XCTAssertEqual(10, five.amount);
}

@end
