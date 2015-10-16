//
//  ViewController.m
//  PushingSegues
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
#import "ThirdVC.h"

@interface ViewController ()
 
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (IBAction)pressedButtonTextToLabel:(id)sender
{
    self.labelOfText.text = self.textField.text;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"push"])
    {
        SecondVC *svc = [segue destinationViewController];
        svc.passString = self.labelOfText.text;
    }
    
}


@end
