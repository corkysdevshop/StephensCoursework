//
//  ViewController.m
//  notificationCenter
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //old way of doing it
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testMethod:) name:@"Frequency" object:nil];
    

    //new block way of doing it, don't need test method for this
    [[NSNotificationCenter defaultCenter] addObserverForName:@"Frequency" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"Heard frequency, with object %@", note.object);
    }];
}

- (IBAction)buttonPressed:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Frequency" object:@"Info To Send"];
}

-(void)testMethod:(NSNotification *)notification
{
    NSLog(@"Different Message with%@", notification.object);
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
