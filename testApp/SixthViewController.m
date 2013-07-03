//
//  SixthViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/27/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SixthViewController.h"
#import "SecondViewController.h"

@interface SixthViewController ()

@end

@implementation SixthViewController

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
//    //How many images?
//    
//    int PageCount = 3;
//    
//    //Setup Scrollview
//    UIScrollView *Scroller = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 95, 300, 250)];
//    
//    Scroller.backgroundColor = [UIColor clearColor];
//    Scroller.pagingEnabled = YES;
//    Scroller.contentSize = CGSizeMake(PageCount * Scroller.bounds.size.width, Scroller.bounds.size.height);
//    
//    //setup view size
//    CGRect ViewSize = Scroller.bounds;
//    
//    UIImageView *ImgView = [[UIImageView alloc]initWithFrame:ViewSize];
//    [ImgView setImage:[UIImage imageNamed:@"Page1.png"]];
//    [Scroller addSubview:ImgView];
//    
//    ViewSize = CGRectOffset(ViewSize, Scroller.bounds.size.width, 0);
//                
//    UIImageView *ImgView2 = [[UIImageView alloc]initWithFrame:ViewSize];
//    [ImgView2 setImage:[UIImage imageNamed:@"Page2.png"]];
//    [Scroller addSubview:ImgView2];
//    
//    
//    ViewSize = CGRectOffset(ViewSize, Scroller.bounds.size.width, 0);
//
//    
//    UIImageView *ImgView3 = [[UIImageView alloc]initWithFrame:ViewSize];
//    [ImgView3 setImage:[UIImage imageNamed:@"Page3.png"]];
//    [Scroller addSubview:ImgView3];
//
//    
//    
//    [self.view addSubview:Scroller];
//     
//    
//    
//}




-(IBAction)goToUserMainPage:(id)sender

{
    
    //switch to home view user login page
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
