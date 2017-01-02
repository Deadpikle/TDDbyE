//
//  Expression.h
//  TDDByExample
//
//  Created by School of Computing Macbook on 1/1/17.
//  Copyright © 2017 CIRC. All rights reserved.
//

#ifndef Expression_h
#define Expression_h

@class Money;
@class Bank;

@protocol Expression <NSObject>

@required

-(Money*)reduceWithBank:(Bank*)bank toCurrency:(NSString*)currency;
-(id<Expression>)plus:(id<Expression>)addend;

@end


#endif /* Expression_h */
