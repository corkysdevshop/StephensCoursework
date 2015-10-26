//
//  ViewController.m
//  autoLayout
//
//  Created by Stephen Printup on 10/21/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)button:(id)sender
{
    [UIView animateWithDuration:3 animations:^{
        self.heightContraint.constant = 50;
        [self.view layoutIfNeeded];
    }];
}

@end
