//
//  SecondViewController.h
//  testApp
//
//  Created by Desire Gardner on 6/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface SecondViewController : UIViewController 


{
    IBOutlet UITableView *myTableView;
    NSMutableArray *tableData;
    NSMutableArray *text;
    NSMutableArray *images;
    
    
    IBOutlet UIButton *follow;
    IBOutlet UIButton *unfollow;
    IBOutlet UIButton *editButton;
    IBOutlet UIButton *add;
   
}



-(IBAction)returnToMainView:(id)sender;

-(IBAction)toFollow:(id)sender;

-(IBAction)toUnfollow:(id)sender;

-(IBAction)signOut:(id)sender;






@end
