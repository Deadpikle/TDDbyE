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
	return [expression reduceWithBank:self toCurrency:currency];
}

-(NSInteger)getExchangeRateFromCurrency:(NSString*)fromCurrency toCurrency:(NSString*)toCurrency {
	return [fromCurrency isEqualToString:@"CHF"] && [toCurrency isEqualToString:@"USD"] ? 2 : 1;
}

@end
