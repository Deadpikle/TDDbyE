//
//  Sum.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import "Sum.h"

@implementation Sum

-(instancetype)initWithAugend:(Money*)augend addend:(Money*)addend {
	self = [super init];
	if (self) {
		self.augend = augend;
		self.addend = addend;
	}
	return self;
}

-(Money*)reduceWithBank:(Bank*)bank toCurrency:(NSString*)currency {
	int amount = self.augend.amount + self.addend.amount;
	return [[Money alloc] initWithAmount:amount currency:currency];
}

@end
