//
//  ChapterTwo.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Dollar.h"

@interface MoneyTests : XCTestCase

@end

@implementation MoneyTests

-(void)testMultiplication {
    Dollar *five = [[Dollar alloc] initWithAmount:5];
    Dollar *product = [five times:2];
    // We can either use XCTAssertTrue (with an isEqualTo: call) or XCTAssertEqualObjects
    // to compare two Dollar objects. Dollars are pointers, so we can't just do
    // == or similar (as we must compare values).
    XCTAssertTrue([[Dollar dollarWithAmount:10] isEqualTo:product]);
    product = [five times:3];
    XCTAssertEqualObjects([Dollar dollarWithAmount:15], product);
}

-(void)testEquality {
    XCTAssertTrue([[Dollar dollarWithAmount:5] isEqualTo:[Dollar dollarWithAmount:5]]);
    XCTAssertFalse([[Dollar dollarWithAmount:5] isEqualTo:[Dollar dollarWithAmount:6]]);
}

@end
