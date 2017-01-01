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

@protocol Expression <NSObject>

@required

-(Money*)reduceTo:(NSString*)currency;

@end


#endif /* Expression_h */
