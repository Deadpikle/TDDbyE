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
    XCTAssertEqual(10, product.amount);
    product = [five times:3];
    XCTAssertEqual(15, product.amount);
}

-(void)testEquality {
    XCTAssertTrue([[[Dollar alloc] initWithAmount:5] isEqualTo:[[Dollar alloc] initWithAmount:5]]);
    XCTAssertFalse([[[Dollar alloc] initWithAmount:5] isEqualTo:[[Dollar alloc] initWithAmount:6]]);
}

@end
