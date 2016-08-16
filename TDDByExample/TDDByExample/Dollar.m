//
//  Dollar.m
//  TDDByExample
//
//  Created by Deadpikle on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import "Dollar.h"
#import "Money_Protected.h"

// This is the "private" interface
@interface Dollar()

@end

@implementation Dollar

-(instancetype)initWithAmount:(int)amount currency:(NSString*)currency {
	return [super initWithAmount:amount currency:currency];
}

+(instancetype)dollarWithAmount:(int)amount currency:(NSString*)currency {
    return [[Dollar alloc] initWithAmount:amount currency:currency];
}

-(NSString*)currency {
	return self.currencyType;
}

@end
