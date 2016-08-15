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

-(instancetype)initWithAmount:(int)amount {
    self = [super init];
    if (self) {
        self.amount = amount;
    }
    return self;
}

+(instancetype)francWithAmount:(int)amount {
    return [[Franc alloc] initWithAmount:amount];
}

-(Money*)times:(int)multiplier {
	return [Franc francWithAmount:self.amount * multiplier];
}

@end
