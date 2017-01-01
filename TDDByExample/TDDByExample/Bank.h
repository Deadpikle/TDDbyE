//
//  Bank.h
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Money.h"
#import "Expression.h"

@interface Bank : NSObject

-(Money*)reduce:(id<Expression>)expression toCurrency:(NSString*)currency;
-(NSInteger)getExchangeRateFromCurrency:(NSString*)fromCurrency toCurrency:(NSString*)toCurrency;

@end
