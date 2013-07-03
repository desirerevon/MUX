//
//  ViewController.h
//  testApp
//
//  Created by Desire Gardner on 6/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITextFieldDelegate>

{
    IBOutlet UIButton *signIn;
    IBOutlet UIButton *newAccount;

    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    
    IBOutlet UISwitch *byPass;


}


-(IBAction)signIn:(id)sender;
-(IBAction)createAccount:(id)sender;
-(IBAction)byPassLogin:(id)sender;




@end
