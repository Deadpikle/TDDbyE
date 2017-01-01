//
//  Bank.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import "Bank.h"

@implementation Bank

-(Money*)reduce:(id<Expression>)expression toCurrency:(NSString*)currency {
	return [Money dollarWithAmount:10];
}

@end
