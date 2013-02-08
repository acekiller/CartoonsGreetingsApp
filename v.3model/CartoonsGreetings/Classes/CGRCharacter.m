//
//  CGRCharacter.m
//  CartoonsGreetings
//
//  Created by ate on 07/02/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRCharacter.h"

@implementation CGRCharacter

-(id)initWithName:(NSString *)characterName greeting:(NSString *)characterGreeting portrait:(NSString *)characterPortrait unknownUserNaming:(NSString *)userNaming{
    
    self.Name=characterName;
    self.Greeting=characterGreeting;
    self.Portrait=[UIImage imageNamed:characterPortrait];
    self.UnknownUserNaming=userNaming;
    
    return self;
}

@end
