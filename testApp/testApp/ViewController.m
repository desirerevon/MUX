//
//  ViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "ViewController.h"
#import "SixthViewController.h"
#import "FourthViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    
//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    [testObject setObject:@"desire" forKey:@"foo"];
//    [testObject save];
}

-(IBAction)signIn:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WELCOME TO PITCH"
                                                    message:@"You can now view the feed. Click on the users image to view their profiles!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];

    //bypass login for now just switch to sixth view to login to app main page
    SixthViewController *sixthView = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:sixthView animated:YES completion:NULL];
 
        
}





- (BOOL)textFieldShouldReturn:(UITextField *)aTextField
{
    [aTextField resignFirstResponder];
    return YES;
}







-(IBAction)createAccount:(id)sender
{
    
    //bypass login for now just switch to second view
    FourthViewController *fourthView = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:fourthView animated:YES completion:NULL];
    
    
}


-(IBAction)byPassLogin:(id)sender
{
//    PFUser *currentUser = [PFUser currentUser];
//    if (currentUser) {
//        // do stuff with the user
//    } else {
//        // show the signup or login screen
//        [PFUser logOut];
//        PFUser *currentUser = [PFUser currentUser]; // this will now be nil
//    }


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
