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
    // We can either use XCTAssertTrue (with an isEqualTo: call) or XCTAssertEqualObjects
    // to compare two Dollar objects. Dollars are pointers, so we can't just do
    // == or similar (as we must compare values).
    XCTAssertTrue([[Dollar dollarWithAmount:10] isEqualTo:[five times:2]]);
    XCTAssertEqualObjects([Dollar dollarWithAmount:15], [five times:3]);
}

-(void)testEquality {
    XCTAssertTrue([[Dollar dollarWithAmount:5] isEqualTo:[Dollar dollarWithAmount:5]]);
    XCTAssertFalse([[Dollar dollarWithAmount:5] isEqualTo:[Dollar dollarWithAmount:6]]);
}

-(void)testPrivateVariableAccess {
    // In Objective-C, there are crafty ways to access private variables. >:)
    Dollar *twelve = [Dollar dollarWithAmount:12];
    XCTAssertEqual(12, [[twelve valueForKey:@"amount"] integerValue]);
}

@end
