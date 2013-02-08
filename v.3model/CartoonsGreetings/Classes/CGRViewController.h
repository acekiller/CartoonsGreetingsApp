//
//  CGViewController.h
//  CartoonsGreetings
//
//  Created by ate on 29/01/13.
//  Copyright (c) 2013 ate. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CGRViewController : UIViewController <UITextFieldDelegate>
- (IBAction)SendUserName:(id)sender;


@property NSString *UserName;

@end




