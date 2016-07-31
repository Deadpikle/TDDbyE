//
//  Money.m
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Money.h"
#import "Money_Protected.h" // must import the protected header to synthesize things properly

@implementation Money

// For more information regarding isEqual: vs isEqualTo:,
// see http://stackoverflow.com/a/7096815/3938401
-(BOOL)isEqual:(id)object {
    Money *money = (Money*)object;
    return self.amount == money.amount;
}

@end
