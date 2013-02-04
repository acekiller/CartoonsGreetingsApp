//
//  CGCharactersListTableViewController.m
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

//  l'array di personaggi lo chiamo qui. e ad ogni click inizializzo l'oggetto appropriato.
//  non è array oggetti!


#import "CGRCharactersListTableViewController.h"
#import "CGRCharacterViewController.h"
#import "CGRViewController.h"

@interface CGRCharactersListTableViewController ()

@end

@implementation CGRCharactersListTableViewController



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    self.title = @"Available Characters"; //va bene impostare il titolo qui?
    
    self.CharactersData = [NSArray arrayWithContentsOfFile:[
                                                            [NSBundle mainBundle] pathForResource:@"CharactersList"
                                                            ofType:@"plist"]];
    
    
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1; // o 0??
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.CharactersData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:MyIdentifier];
    }
    
    cell.textLabel.text = [[self.CharactersData objectAtIndex: indexPath.row] objectForKey:@"Name"];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    [super prepareForSegue:segue sender:sender];
    
    
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    
    NSString *name=[[self.CharactersData objectAtIndex: path.row] objectForKey:@"Name"];
    NSString *greeting;
    NSString *nameToGreet;
    if (![self.User length]==0) {
        nameToGreet=self.User;
    }
    else{
        nameToGreet=[[self.CharactersData objectAtIndex: path.row] objectForKey:@"Alternative" ];
    }
    greeting = [[NSString alloc]initWithFormat:@"%@ %@!",[[self.CharactersData objectAtIndex: path.row] objectForKey:@"Greeting"],nameToGreet];
    
    NSString *imageName = [[self.CharactersData objectAtIndex: path.row] objectForKey:@"Portrait"];
    UIImage *portrait = [UIImage imageNamed:imageName];
    
    
    
    [segue.destinationViewController setCharacterName:name];
    [segue.destinationViewController setCharacterGreeting:greeting];
    [segue.destinationViewController setCharacterPortrait:portrait];
    

    
}

#pragma mark - Table view delegate



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"characterSegue" sender:nil];
    
}

@end