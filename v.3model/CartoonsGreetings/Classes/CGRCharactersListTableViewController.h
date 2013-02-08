//
//  CGCharactersListTableViewController.h
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGRViewController.h"

@class CGRCharacterViewController;

@interface CGRCharactersListTableViewController : UITableViewController

@property (nonatomic, copy) NSArray *CharactersData;
@property (nonatomic, copy) NSString *User;


@end



