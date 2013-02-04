//
//  CGCharacterViewController.h
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGRCharacterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *PortraitImageView;
@property (weak, nonatomic) IBOutlet UILabel *GreetingLabel;

@property (nonatomic,copy) NSString *characterName;
@property (nonatomic,copy) NSString *characterGreeting;
@property (nonatomic,copy) UIImage *characterPortrait;
//@property (nonatomic,copy) NSString *backgroundColor;
//@property (nonatomic,copy) NSString *textColor;

-(id)initWithName:(NSString *)characterName greeting:(NSString *)characterGreeting portrait:(UIImage *)characterPortrait;

@end
