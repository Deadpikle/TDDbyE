//
//  Dollar.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Dollar.h"

@implementation Dollar

-(instancetype)initWithAmount:(int)amount {
    self = [super init];
    if (self) {
        self.amount = amount;
    }
    return self;
}

+(instancetype)dollarWithAmount:(int)amount {
    return [[Dollar alloc] initWithAmount:amount];
}

-(Dollar*)times:(int)multiplier {
    int result = self.amount * multiplier;
    return [[Dollar alloc] initWithAmount:result];
}

// For more information regarding isEqual: vs isEqualTo:,
// see http://stackoverflow.com/a/7096815/3938401
-(BOOL)isEqual:(id)object {
    Dollar *dollar = (Dollar*)object;
    return self.amount == dollar.amount;
}

@end
