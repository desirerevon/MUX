//
//  DetailViewController.h
//  testApp
//
//  Created by Desire Gardner on 6/19/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

{
    IBOutlet UIImageView *userImg;
    IBOutlet UITextView *userText;
    IBOutlet UIButton *offer;
    
    IBOutlet UIButton *like;
    IBOutlet UIButton *dislike;

}


@property (nonatomic, retain) IBOutlet UITextView *text;
@property (nonatomic, retain) IBOutlet UIImageView *images;

-(IBAction)offerUp:(id)sender;

-(IBAction)returnToMainView:(id)sender;

-(IBAction)toLike:(id)sender;

-(IBAction)toDislike:(id)sender;


@end
