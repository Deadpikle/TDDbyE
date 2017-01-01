//
//  Bank.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import "Bank.h"
#import "Sum.h"

// The table of currency rates will be an NSDictionary of "from" currencies that holds an NSDictionary of "to" currencies that map to rates

@interface Bank()

@property NSMutableDictionary<NSString*, NSMutableDictionary<NSString*, NSNumber*>*> *rateMap;

@end

@implementation Bank

-(instancetype)init {
	self = [super init];
	if (self) {
		self.rateMap = [NSMutableDictionary new];
	}
	return self;
}

-(Money*)reduce:(id<Expression>)expression toCurrency:(NSString*)currency {
	return [expression reduceWithBank:self toCurrency:currency];
}

-(NSInteger)getExchangeRateFromCurrency:(NSString*)fromCurrency toCurrency:(NSString*)toCurrency {
	if ([fromCurrency isEqualToString:toCurrency]) {
		return 1; // if same currency, return 1:1 rate
	}
	NSMutableDictionary<NSString*, NSNumber*> *toCurrencyMap = [self.rateMap objectForKey:fromCurrency];
	NSNumber *rate = toCurrencyMap != nil ? [toCurrencyMap objectForKey:toCurrency] : nil;
	if (rate) {
		return [rate integerValue];
	}
	return 1; // if we don't have the data on it, assume rate is 1:1
}

-(void)addCurrencyExchangeRateFrom:(NSString*)from toCurrency:(NSString*)to withRate:(NSInteger)rate {
	NSMutableDictionary<NSString*, NSNumber*> *toCurrencyMap = [self.rateMap objectForKey:from];
	if (!toCurrencyMap) {
		toCurrencyMap = [[NSMutableDictionary alloc] init];
	}
	[toCurrencyMap setValue:[NSNumber numberWithInteger:rate] forKey:to];
	[self.rateMap setObject:toCurrencyMap forKey:from];
}

@end
