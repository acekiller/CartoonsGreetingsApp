//
//  CGViewController.m
//  CartoonsGreetings
//
//  Created by ate on 29/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import "CGRViewController.h"
#import "CGRCharactersListTableViewController.h"

@interface CGRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *UserNameTextField;

@end

@implementation CGRViewController


- (void)viewDidLoad
{
    self.title=@"Cartoon Greetings App";
    
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    [segue.destinationViewController setUser:self.UserName];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.UserNameTextField) {
        self.UserName = self.UserNameTextField.text;
        
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)SendUserName:(id)sender {
    [self performSegueWithIdentifier:@"listSegue" sender:nil];
}
@end
