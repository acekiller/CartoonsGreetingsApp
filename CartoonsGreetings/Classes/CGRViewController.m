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
    
    // il segue va al navigation controller, non al tableViewController, perciò devo fare questo passaggio. PERCHè? **
    // non posso passare a prossimo con push, perchè sono due navigatori. in questo modo, non posso nemmeno inserire il pulsante back, per tornare alla home. perchè? come risolvo il problema?
    
    UINavigationController *navController = (UINavigationController*)[segue destinationViewController];
    CGRCharactersListTableViewController *cGRCharactersListTableViewController = [navController topViewController];

    [cGRCharactersListTableViewController setUser:self.UserName];

    
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
