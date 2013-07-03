//
//  SecondViewController.m
//  testApp
//
//  Created by Desire Gardner on 6/18/13.
//  Copyright (c) 2013 Desire Gardner. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomCell.h"
#import "DetailViewController.h"
#import "SixthViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
 


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    tableData = [[NSMutableArray alloc]  initWithObjects:@"IdeaOne",
                 @"IdeaTwo",
                 @"IdeaThree",
                 @"IdeaFour",
                 @"IdeaFive",
                 @"IdeaSix",
                 @"IdeaSeven",
                 @"IdeaEight",
                 @"IdeaNine",
                 @"IdeaTen",
                 nil];
    
    text = [[NSMutableArray alloc]initWithObjects:
            
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            @"Great invention ....",
            nil];
    
    images= [[NSMutableArray alloc]initWithObjects:
                  
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
              @"drink.png",
                 nil];
    

 
    


}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *customCell = @"CustomCell";
    
    CustomCell *cell = (CustomCell*)[myTableView dequeueReusableCellWithIdentifier:customCell];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.title.text = [tableData objectAtIndex:indexPath.row];
    cell.image.image = [UIImage imageNamed:@"invention.png"];


    
    return cell;
}


-(IBAction)returnToMainView:(id)sender

{
    
    //switch to home view user login page
    SixthViewController *sixthView = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:sixthView animated:YES completion:NULL];
    
    
}



-(IBAction)onEdit:(id)sender
{
    if(editButton.tag == 0)
    {
        //Done
        [myTableView setEditing:TRUE];
        [editButton setTitle:@"Done" forState:0];
        editButton.tag = 1;
    }
    else
    {
        //Edit
        [myTableView setEditing:FALSE];
        [editButton setTitle:@"Edit" forState:0];
        editButton.tag = 0;}
    
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath

{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [tableData removeObjectAtIndex:indexPath.row];
        [images removeObjectAtIndex:indexPath.row];
        [text removeObjectAtIndex:indexPath.row];
        
        
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:true];
    }
}





- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *details =[[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    if (details != nil)
        
    {
        [self presentViewController:details animated:true completion:nil];
        
        details.text.text = [tableData objectAtIndex: indexPath.row];
        details.images.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
        
        
        
    }
    
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}


-(IBAction)toFollow:(id)sender
{

    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"Following @DesireRevon!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

-(IBAction)toUnfollow:(id)sender
{

    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"Unfollowed @DesireRevon!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}


-(IBAction)signOut:(id)sender
{
   ViewController *view = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [self setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentViewController:view animated:YES completion:NULL];

   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ALERT"
                                                    message:@"Logged Out!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [self dismissViewControllerAnimated:TRUE completion:nil];

}





@end
