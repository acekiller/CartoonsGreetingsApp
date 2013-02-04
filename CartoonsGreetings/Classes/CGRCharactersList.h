//
//  CGCharactersList.h
//  CartoonsGreetings
//
//  Created by ate on 29/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CGCharacter;

@interface CGRCharactersList : NSObject       //VA BENE IL NOME DELLA CLASSE? O è UN CONTROLLER?

@property (nonatomic, copy) NSArray *CharactersData;
-(NSArray*)initializeCharactersList;

@end
