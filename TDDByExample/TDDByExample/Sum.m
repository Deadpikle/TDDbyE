//
//  Sum.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import "Sum.h"

@implementation Sum

-(instancetype)initWithAugend:(id<Expression>)augend addend:(id<Expression>)addend {
	self = [super init];
	if (self) {
		self.augend = augend;
		self.addend = addend;
	}
	return self;
}

-(Money*)reduceWithBank:(Bank*)bank toCurrency:(NSString*)currency {
	int amount = [self.augend reduceWithBank:bank toCurrency:currency].amount + [self.addend reduceWithBank:bank toCurrency:currency].amount;
	return [[Money alloc] initWithAmount:amount currency:currency];
}

-(id<Expression>)plus:(id<Expression>)addend {
	return [[Sum alloc] initWithAugend:self addend:addend];
}

-(id<Expression>)times:(NSInteger)multiplier {
	return [[Sum alloc] initWithAugend:[self.augend times:multiplier] addend:[self.addend times:multiplier]];
}

@end
