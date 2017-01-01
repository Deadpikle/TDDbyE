//
//  ChapterTwo.m
//  TDDByExample
//
//  Created by Deadpikle on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Money.h"

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

-(void)testMoneyEquality {
	XCTAssertFalse([[Money francWithAmount:5] isEqualTo:[Money dollarWithAmount:5]]);
}

// Currency Tests

-(void)testCurrency {
	XCTAssertTrue([@"USD" isEqualToString:[[Money dollarWithAmount:1] currency]]);
	XCTAssertTrue([@"CHF" isEqualToString:[[Money francWithAmount:1] currency]]);
}

// Addition Tests

-(void)testSimpleAddition {
	Money *sum = [[Money dollarWithAmount:5] plus:[Money dollarWithAmount:5]];
	XCTAssertTrue([[Money dollarWithAmount:10] isEqualTo:sum]);
}

@end
