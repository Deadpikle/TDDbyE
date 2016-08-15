//
//  ChapterTwo.m
//  TDDByExample
//
//  Created by Deadpikle on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Franc.h"

@interface MoneyTests : XCTestCase

@end

@implementation MoneyTests

-(void)testMultiplication {
	Money *five = [Money dollarWithAmount:5];
    // We can either use XCTAssertTrue (with an isEqualTo: call) or XCTAssertEqualObjects
    // to compare two Dollar objects. Dollars are pointers, so we can't just do
    // == or similar (as we must compare values).
    XCTAssertTrue([[Money dollarWithAmount:10] isEqualTo:[five times:2]]);
    XCTAssertEqualObjects([Money dollarWithAmount:15], [five times:3]);
}

-(void)testEquality {
    XCTAssertTrue([[Money dollarWithAmount:5] isEqualTo:[Money dollarWithAmount:5]]);
	XCTAssertFalse([[Money dollarWithAmount:5] isEqualTo:[Money dollarWithAmount:6]]);
}

-(void)testPrivateVariableAccess {
    // In Objective-C, there are crafty ways to access private variables. >:)
    Money *twelve = [Money dollarWithAmount:12];
    XCTAssertEqual(12, [[twelve valueForKey:@"amount"] integerValue]);
    
    [twelve setValue:@15 forKey:@"amount"];
    XCTAssertEqual(15, [[twelve valueForKey:@"amount"] integerValue]);
}

// Franc Tests

-(void)testFrancMultiplication {
    Money *five = [Money francWithAmount:5];
    XCTAssertTrue([[Money francWithAmount:10] isEqualTo:[five times:2]]);
    XCTAssertEqualObjects([Money francWithAmount:15], [five times:3]);
}

-(void)testFrancEquality {
    XCTAssertTrue([[Money francWithAmount:5] isEqualTo:[Money francWithAmount:5]]);
    XCTAssertFalse([[Money francWithAmount:5] isEqualTo:[Money francWithAmount:6]]);
}

-(void)testMoneyEquality {
	XCTAssertFalse([[Money francWithAmount:5] isEqualTo:[Money dollarWithAmount:5]]);
}

@end
