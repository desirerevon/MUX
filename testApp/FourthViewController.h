//
//  FourthViewController.h
//  testApp
//
//  Created by Desire Gardner on 6/20/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController

{
    
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UITextField *email;
}


- (IBAction)save:(id)sender;

-(IBAction)returnToMainView:(id)sender;

@end
