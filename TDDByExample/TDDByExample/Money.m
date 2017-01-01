//
//  Money.m
//  TDDByExample
//
//  Created by Deadpikle on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Money.h"
#import "Sum.h"

@implementation Money

-(instancetype)initWithAmount:(int)amount currency:(NSString*)currency {
	self = [super init];
	if (self) {
		self.amount = amount;
		self.currencyType = currency;
	}
	return self;
}

+(Money*)dollarWithAmount:(int)amount {
	return [[Money alloc] initWithAmount:amount currency:@"USD"];
}

+(Money*)francWithAmount:(int)amount {
	return [[Money alloc] initWithAmount:amount currency:@"CHF"];
}

// For more information regarding isEqual: vs isEqualTo:,
// see http://stackoverflow.com/a/7096815/3938401
-(BOOL)isEqual:(id)object {
    Money *money = (Money*)object;
    return self.amount == money.amount && [money.currencyType isEqualToString:self.currencyType];
}

-(NSString*)description {
	return [NSString stringWithFormat:@"[%@] Amount: %d; Currency: %@", [self class], self.amount, self.currencyType];
}

-(Money*)times:(int)multiplier {
	return [[Money alloc] initWithAmount:self.amount * multiplier currency:self.currencyType];
}

-(NSString*)currency {
	return self.currencyType;
}

-(id<Expression>)plus:(Money*)moneyToAdd {
	//int finalAmount = self.amount + moneyToAdd.amount;
	//return [[Money alloc] initWithAmount:finalAmount currency:self.currencyType];
	return [[Sum alloc] initWithAugend:self addend:moneyToAdd];
}

@end
