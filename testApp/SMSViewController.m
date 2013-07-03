//
//  SMSViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/27/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SMSViewController.h"
#import "OfferViewController.h"

@interface SMSViewController ()

@end

@implementation SMSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(IBAction)saveData:(id)sender
{

    NSString *saveString = field.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:saveString forKey:@"savestring"];
    [defaults synchronize];
    
    
    

}





-(IBAction)loadData:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    NSString *loadstring = [defaults objectForKey:@"savestring"];
    [field setText:loadstring];
    [label setText:loadstring];
    
}


-(IBAction)viewOffer:(id)sender
{
    OfferViewController *offerView = [[OfferViewController alloc] initWithNibName:@"OfferViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:offerView animated:YES completion:NULL];
    


}




- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
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

@end
