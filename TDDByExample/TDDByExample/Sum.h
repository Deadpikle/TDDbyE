//
//  Sum.h
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"
#import "Expression.h"

@interface Sum : NSObject <Expression>

@property id<Expression> augend;
@property id<Expression> addend;

-(instancetype)initWithAugend:(id<Expression>)augend addend:(id<Expression>)addend;

@end
