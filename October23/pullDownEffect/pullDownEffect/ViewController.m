//
//  ViewController.m
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//
//  [X]cover image
//  [X]unveil image
//  [X]push to next view controller
//  [X]constrain image to viewcontroller size
//  [ ]get label in VC4 to display text in table of VC2

#import "ViewController.h"
#import "SecondVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.picture.hidden = YES;
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        self.picture.hidden = NO;
    } completion:^(BOOL finished) {
        [self performSegueWithIdentifier:@"push" sender:self];
    }];
    
}

@end
