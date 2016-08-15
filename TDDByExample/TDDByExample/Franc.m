//
//  Franc.m
//  TDDByExample
//
//  Created by Deadpikle on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Franc.h"
#import "Money_Protected.h"

@interface Franc()

@end

@implementation Franc

-(instancetype)initWithAmount:(int)amount currency:(NSString*)currency {
    self = [super init];
    if (self) {
        self.amount = amount;
		self.currencyType = currency;
    }
    return self;
}

+(instancetype)francWithAmount:(int)amount currency:(NSString*)currency {
    return [[Franc alloc] initWithAmount:amount currency:currency];
}

-(Money*)times:(int)multiplier {
	return [Money francWithAmount:self.amount * multiplier];
}

-(NSString*)currency {
	return self.currencyType;
}

@end
