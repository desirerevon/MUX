//
//  DetailViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/19/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "DetailViewController.h"
#import "OfferViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize text, images;


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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-(IBAction)offerUp:(id)sender
//{
//
//    ThirdViewController *thirdView = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
//    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
//    [self presentViewController:thirdView animated:YES completion:NULL];
//}


-(IBAction)offerUp:(id)sender
{
    OfferViewController *offerView = [[OfferViewController alloc] initWithNibName:@"OfferViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:offerView animated:YES completion:NULL];
    

    
}


-(IBAction)toLike:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"LOVE IT"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];

}

-(IBAction)toDislike:(id)sender
{

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"HATE IT!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}



-(IBAction)returnToMainView:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}







@end
