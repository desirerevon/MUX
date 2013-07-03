//
//  FourthViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/20/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "FourthViewController.h"
#import <Parse/Parse.h>


@interface FourthViewController ()

@end

@implementation FourthViewController


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *user = [defaults objectForKey:@"username"];
    NSString *pass = [defaults objectForKey:@"password"];
    NSString *mail = [defaults objectForKey:@"email"];

    

    
    
    // Update the UI elements with the saved data
    username.text = user;
    password.text = pass;
    email.text = mail;
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)save:(id)sender
{
    // Hide the keyboard
    [username resignFirstResponder];
    [password resignFirstResponder];
    [email resignFirstResponder];
    
    // Create strings and integer to store the text info
    NSString *user= [username text];
    NSString *pass = [password text];
    NSString *mail = [email text];
    
   
    // Store the data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:user forKey:@"username"];
    [defaults setObject:pass forKey:@"password"];
    [defaults setObject:mail forKey:@"email"];

    
    [defaults synchronize];
    
    NSLog(@"Data saved");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"Your login info has been saved now login with your new account!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [self dismissViewControllerAnimated:TRUE completion:nil];
    
}


-(IBAction)returnToMainView:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


- (BOOL)textFieldShouldReturn:(UITextField *)aTextField
{
    [aTextField resignFirstResponder];
    return YES;
}


@end
