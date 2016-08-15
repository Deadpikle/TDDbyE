//
//  Dollar.h
//  TDDByExample
//
//  Created by Deadpikle on 7/13/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Dollar : Money

-(instancetype)initWithAmount:(int)amount currency:(NSString*)currency;

// convenience "constructor" so we don't have to do both alloc and initWithAmount
+(instancetype)dollarWithAmount:(int)amount currency:(NSString*)currency;

@end
