//
//  Money.h
//  TDDByExample
//
//  Created by Deadpikle on 7/31/16.
//  Copyright © 2016 CIRC. All rights reserved.
//
//  Benefits of instance variables over properties: http://stackoverflow.com/a/9086811/3938401
//  I chose to use protected properties using a shared header because, syntacically,
//  it is much cleaner. I don't want to use the -> in my Objective-C code!
//  See: http://stackoverflow.com/q/11047351/3938401

#import <Foundation/Foundation.h>

@interface Money : NSObject

-(instancetype)initWithAmount:(int)amount currency:(NSString*)currency;

+(Money*)dollarWithAmount:(int)amount;
+(Money*)francWithAmount:(int)amount;

// The following functions should be implemented by all subclasses:
-(Money*)times:(int)amount;
-(NSString*)currency;

@end
