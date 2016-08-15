//
//  Franc.h
//  TDDByExample
//
//  Created by Deadpikle on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"

@interface Franc : Money

-(instancetype)initWithAmount:(int)amount;

// convenience "constructor" so we don't have to do both alloc and initWithAmount
+(instancetype)francWithAmount:(int)amount;

@end
