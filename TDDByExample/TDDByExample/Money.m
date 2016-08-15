//
//  Money.m
//  TDDByExample
//
//  Created by Deadpikle on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Money.h"
#import "Money_Protected.h" // must import the protected header to synthesize things properly
#import "Dollar.h"
#import "Franc.h"

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
	return [Dollar dollarWithAmount:amount currency:@"USD"];
}

+(Money*)francWithAmount:(int)amount {
	return [Franc francWithAmount:amount currency:@"CHF"];
}

// For more information regarding isEqual: vs isEqualTo:,
// see http://stackoverflow.com/a/7096815/3938401
-(BOOL)isEqual:(id)object {
    Money *money = (Money*)object;
    return self.amount == money.amount && [object isKindOfClass:[self class]];
}

-(NSString*)description {
	return [NSString stringWithFormat:@"[%@] Amount: %d; Currency: %@", [self class], self.amount, self.currencyType];
}

-(Money*)times:(int)amount {
	return nil;
}

-(NSString*)currency {
	return nil;
}

@end
