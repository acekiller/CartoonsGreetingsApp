//
//  CGCharacterViewController.m
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRCharacterViewController.h"
#import "CGRCharacter.h"

@interface CGRCharacterViewController ()



@end

@implementation CGRCharacterViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"initWithNib");
    }
    return self;
}

- (void)viewDidLoad
{

    self.title=self.Character.Name;
    self.GreetingLabel.text=[[NSString alloc] initWithFormat:@"%@ %@!",self.Character.Greeting, self.UserName];
    self.PortraitImageView.image=self.Character.Portrait;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
