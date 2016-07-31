//
//  Franc.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Franc.h"

@interface Franc()

@property int amount;

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

-(Franc*)times:(int)multiplier {
    int result = self.amount * multiplier;
    return [[Franc alloc] initWithAmount:result];
}

// For more information regarding isEqual: vs isEqualTo:,
// see http://stackoverflow.com/a/7096815/3938401
-(BOOL)isEqual:(id)object {
    Franc *franc = (Franc*)object;
    return self.amount == franc.amount;
}


@end
