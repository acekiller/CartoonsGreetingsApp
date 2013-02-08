//
//  CGCharactersList.m
//  CartoonsGreetings
//
//  Created by ate on 29/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRCharactersList.h"
#import "CGRCharacter.h"


@implementation CGRCharactersList

 -(NSArray*)initializeCharactersList
{

    CGRCharacter *Ned = [[CGRCharacter alloc] initWithName:@"Ned Flanders" greeting:@"Hi-diddly-ho" portrait:@"Ned.jpg" unknownUserNaming:@"my dear"];
    CGRCharacter *Popeye = [[CGRCharacter alloc] initWithName:@"Popeye" greeting:@"Ahoy" portrait:@"Popeye.jpg" unknownUserNaming:@"youth"];
    CGRCharacter *Salad = [[CGRCharacter alloc] initWithName:@"Salad Fingers" greeting:@"Hello" portrait:@"Salad.jpg" unknownUserNaming:@"my little firend"];

    self.CharactersData = [NSArray arrayWithObjects: Ned, Popeye, Salad, nil];
 
    return self.CharactersData;
    
}

@end
