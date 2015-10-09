//
//  ViewController.m
//  ibAction
//
//  Created by Stephen Printup on 10/1/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"
#import "mathClass.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int x; //only good for declarations
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //x = 0; //sets it to zero
    
    
    mathClass *mathInstance = [[mathClass alloc]init];
    NSLog(@"%d", mathInstance.currentValue);
    [mathInstance addTwoToThisNumber:2];
    NSLog(@"%d", mathInstance.currentValue);
}

- (IBAction)pressedEnter:(id)sender {
    //[mathClass addTwoToThisNumber:x];
    //x = x+2;
}


@end
