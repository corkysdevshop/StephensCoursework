//
//  ViewController.m
//  initAndImages
//
//  Created by Stephen Printup on 10/5/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tracker *newTracker = [[tracker alloc] initWithName:@"Joe"];
    [newTracker loggingProperties];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:true];
    
    
}

@end
