//
//  CGCharacterViewController.h
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CGRCharacter;

@interface CGRCharacterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *PortraitImageView;
@property (weak, nonatomic) IBOutlet UILabel *GreetingLabel;

@property CGRCharacter *Character;
@property NSString *UserName;


@end


//qui tolgo le proprietà