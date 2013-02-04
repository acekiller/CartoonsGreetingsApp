//
//  CGCharacterViewController.m
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRCharacterViewController.h"

@interface CGRCharacterViewController ()



@end

@implementation CGRCharacterViewController

-(id)initWithName:(NSString *)characterName greeting:(NSString *)characterGreeting portrait:(UIImage *)characterPortrait{
        
    
    return nil;
}

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
    self.title=self.characterName;
    [super viewDidLoad];
    
    self.GreetingLabel.text=self.characterGreeting;
    self.PortraitImageView.image=self.characterPortrait;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
