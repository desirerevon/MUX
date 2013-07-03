//
//  SMSViewController.h
//  testApp
//
//  Created by Desire Gardner on 6/27/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMSViewController : UIViewController

{
    IBOutlet UILabel *label;
    IBOutlet UITextField *field;

}


-(IBAction)saveData:(id)sender;
-(IBAction)loadData:(id)sender;

-(IBAction)viewOffer:(id)sender;


@end
