//
//  ViewController.m
//  newColorTextField
//
//  Created by Stephen Printup on 10/9/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *colors;
    NSMutableDictionary *users;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //color fun
    
    colors = [[NSMutableArray alloc]init];
    
    [colors addObject:[UIColor redColor]];
    [colors addObject:[UIColor orangeColor]];
    [colors addObject:[UIColor yellowColor]];
    [colors addObject:[UIColor greenColor]];
    [colors addObject:[UIColor blueColor]];
    [colors addObject:[UIColor purpleColor]];
    
    //adding users to dictionary
    users = [[NSMutableDictionary alloc]init];
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//activaitng text field
{
    [self changeColor];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//every key press
{
    [self changeColor];
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
 //return
{
    //color games
    [self changeColor];
    if (self.textField1 == textField)
    {
        [self.textField2 becomeFirstResponder];
    }
    else
    {
        [self.textField1 becomeFirstResponder];
    }
    
    //create new user
    if (textField == self.textField2)
    {
        [self createUser];
    }
    
    
    NSLog(@"%@", users);
    
    return YES;
}


-(void) changeColor
//changing color
{
    int variable = arc4random() % 6;
    self.view.backgroundColor = colors[variable];
}

-(void) createUser
{
    if ([self.textField1.text length] >= 7)
    {
    [users setObject:self.textField2.text forKey:self.textField1.text];
    }
    
    //[ ]needs validation: 1 uppercase, 1 lowercase, 1 number or errmsg. 

}

@end









