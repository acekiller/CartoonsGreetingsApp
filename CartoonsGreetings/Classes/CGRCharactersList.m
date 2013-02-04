//
//  CGCharactersList.m
//  CartoonsGreetings
//
//  Created by ate on 29/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRCharactersList.h"


//uso questa classe come database: nel metodo initializeCharactersList creo un dizionario per ogni personaggio, e inserisco ogni personaggio
//nell'array CharactersData.
//PER BRUNO **
//va bene così? c'è un modo migliore?


@implementation CGRCharactersList

 -(NSArray*)initializeCharactersList
{

        NSDictionary *Ned = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"Ned Flanders", @"Name",
                               @"Hi-Diddly-Ho", @"Greeting",
                               @"Ned.jpg", @"Portrait",
                               @"my dear", @"Alternative",
                               @"#F00",@"BackgrounColor",
                               @"#123",@"TextColor",
                                    nil];
        NSDictionary *Popeye = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"Popeye", @"Name",
                               @"Ahoy", @"Greeting",
                               @"Popeye.jpg", @"Portrait",
                               @"youth", @"Alternative",
                               @"#123",@"BackgrounColor",
                               @"#000",@"TextColor",
                               nil];
        NSDictionary *Salad = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"Salad Fingers", @"Name",
                               @"Hello", @"Greeting",
                               @"Salad.jpg", @"Portrait",
                               @"my little friend", @"Alternative",
                               @"#ccc",@"BackgrounColor",
                               @"#666",@"TextColor",
                               nil];
    
    self.CharactersData = [NSArray arrayWithObjects: Ned, Popeye, Salad, nil];
 
    return self.CharactersData;
    
}

@end
