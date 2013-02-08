//
//  CGRCharacter.h
//  CartoonsGreetings
//
//  Created by ate on 07/02/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CGRCharacter : NSObject

@property (copy, nonatomic) NSString *Name;
@property NSString *Greeting;
@property UIImage *Portrait;
@property NSString *UnknownUserNaming;

-(id)initWithName:(NSString *)characterName greeting:(NSString *)characterGreeting portrait:(NSString *)characterPortrait unknownUserNaming:(NSString *)userNaming;

@end
