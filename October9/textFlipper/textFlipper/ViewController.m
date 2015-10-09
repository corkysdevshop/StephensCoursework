//
//  ViewController.m
//  textFlipper
//
//  Created by Stephen Printup on 10/9/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.textField1)
    {
    [self.textField2 becomeFirstResponder];
        [self.view setBackgroundColor:[UIColor redColor]];
    }
    else if (textField == self.textField2)
    {
    [self.textField1 becomeFirstResponder];
    [self.view setBackgroundColor:[UIColor greenColor]];
    }
    return  YES;
}
-






@end
