//
//  Dollar.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Dollar.h"
#import "Money_Protected.h"

// This is the "private" interface
@interface Dollar()

@end

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

@end
