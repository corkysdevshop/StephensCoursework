//
//  ViewController.m
//  textFlipper
//
//  Created by Stephen Printup on 10/9/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *colors;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    colors = [[NSMutableArray alloc]init];
    [colors addObject:[UIColor redColor]];
    [colors addObject:[UIColor orangeColor]];
    [colors addObject:[UIColor yellowColor]];
    [colors addObject:[UIColor greenColor]];
    [colors addObject:[UIColor blueColor]];
    [colors addObject:[UIColor purpleColor]];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField //Return
{
    if (textField == self.textField1)
    {
    [self.textField2 becomeFirstResponder];
    }
    else if (textField == self.textField2)
    {
    [self.textField1 becomeFirstResponder];
    }
    [self changeColor];
    return  YES;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField //Begin Editing
{
    if (textField == self.textField1)
    {
        [self.textField1 isFirstResponder];
    }
    else
    {
        [self.textField2 isFirstResponder];
    }
    [self changeColor];
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [self changeColor];

    return YES;
}

-(void)changeColor
{
    int variable1 = arc4random() % 6;
    
    [self.view setBackgroundColor: colors[variable1]];
}
@end
