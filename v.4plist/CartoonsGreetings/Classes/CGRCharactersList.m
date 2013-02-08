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
        //c'è un modo migliore per inizializzare l'array?
    NSMutableArray *CharactersList = [@[
                                   @"init",
                                   ] mutableCopy];
    
    NSArray *CharactersData = [NSArray arrayWithContentsOfFile:[
                                                            [NSBundle mainBundle] pathForResource:@"CharactersList"
                                                            ofType:@"plist"]];
    

    
    int c;
    for (c=0; c<(sizeof CharactersData)-1; c++) {
        
        CGRCharacter *currentCharacter= [[CGRCharacter alloc]
                                         initWithName:[[CharactersData objectAtIndex: c] objectForKey:@"Name"]
                                         greeting:[[CharactersData objectAtIndex: c] objectForKey:@"Greeting"]
                                         portrait:[[CharactersData objectAtIndex: c] objectForKey:@"Portrait"]
                                         unknownUserNaming:[[CharactersData objectAtIndex: c] objectForKey:@"Alternative"]
                                         ];

        CharactersList[c] = currentCharacter;
        
                                                                                                                                                                                                                                                       
    }
    
     return CharactersList;


}

@end
