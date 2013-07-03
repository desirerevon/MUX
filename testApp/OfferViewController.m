//
//  OfferViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/27/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "OfferViewController.h"
#import "SMSViewController.h"
#import "SecondViewController.h"

@interface OfferViewController ()

@end

@implementation OfferViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(IBAction)placeOffer:(id)sender
{
    
   SMSViewController *smsView = [[SMSViewController alloc] initWithNibName:@"SMSViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:smsView animated:YES completion:NULL];
    
    
}



-(IBAction)viewOffer:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:secondView animated:YES completion:NULL];
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
