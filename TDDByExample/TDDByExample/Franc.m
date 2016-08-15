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
	return [super initWithAmount:amount currency:currency];
}

+(instancetype)francWithAmount:(int)amount currency:(NSString*)currency {
    return [[Franc alloc] initWithAmount:amount currency:currency];
}

-(Money*)times:(int)multiplier {
	return [[Franc alloc] initWithAmount:self.amount * multiplier currency:self.currencyType];
}

-(NSString*)currency {
	return self.currencyType;
}

@end
