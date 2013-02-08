//
//  CGCharactersListTableViewController.m
//  CartoonsGreetings
//
//  Created by ate on 31/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

//  chiamo qui l'array di personaggi. e ad ogni click inizializzo l'oggetto appropriato.

#import "CGRCharactersListTableViewController.h"
#import "CGRCharactersList.h"
#import "CGRCharacterViewController.h"
#import "CGRViewController.h"
#import "CGRCharacter.h"

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
    
    self.title=@"Available Characters";
    
    CGRCharactersList * CharactersListInstance =[[CGRCharactersList alloc] init];
    self.CharactersData= [CharactersListInstance initializeCharactersList];

    
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
    return 1; 
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

    CGRCharacter *character=[self.CharactersData objectAtIndex: indexPath.row];
    
    cell.textLabel.text = character.Name;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //qui creo nuovamente l'istanza per ottenere la property UnknownUserNaming: è una ripetizione del codice presente nella funzione precedente: è corretto? come fare altrimenti?
    
    [super prepareForSegue:segue sender:sender];
    
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    
    CGRCharacter *character=[self.CharactersData objectAtIndex: path.row];
    
    NSString *nameToGreet;
    
    if (![self.User length]==0) {
        nameToGreet=self.User;
    }
    else{
        nameToGreet=character.UnknownUserNaming;
    }
    
    [segue.destinationViewController setCharacter:character];
    [segue.destinationViewController setUserName:nameToGreet];
    
}

#pragma mark - Table view delegate



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self performSegueWithIdentifier:@"characterSegue" sender:nil];
}

@end
