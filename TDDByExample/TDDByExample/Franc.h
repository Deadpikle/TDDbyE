//
//  Franc.h
//  TDDByExample
//
//  Created by School of Computing Macbook on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Franc : NSObject

-(instancetype)initWithAmount:(int)amount;

// convenience "constructor" so we don't have to do both alloc and initWithAmount
+(instancetype)francWithAmount:(int)amount;

-(Franc*)times:(int)multiplier;

@end
