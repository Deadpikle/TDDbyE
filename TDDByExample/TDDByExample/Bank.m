//
//  Bank.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import "Bank.h"
#import "Sum.h"

@implementation Bank

-(Money*)reduce:(id<Expression>)expression toCurrency:(NSString*)currency {
	if ([expression isKindOfClass:[Money class]])
		return (Money*)expression;
	Sum *sum = (Sum*)expression;
	return [sum reduceTo:currency];
}

@end
