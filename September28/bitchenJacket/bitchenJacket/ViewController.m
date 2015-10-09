//
//  ViewController.m
//  bitchenJacket
//
//  Created by Stephen Printup on 9/28/15.
//  Copyright (c) 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    double jacket = 149;
    double tax = .095;
    double bankBalance = 160;
    NSString *message;
    double coupon = .05;
    
    double total = ((1 - coupon) * jacket) * (1 + tax);
    if (total <= bankBalance) {
        //NSLog(@"Buy your jacket.");
        message = @"Buy your jacket.";
    }
    else {
        //NSLog(@"So sad... can't buy");
        message = @"So sad... can't buy";
    }
    NSLog(@"The price is $%.2f. %@",total,message);
    NSLog(@"Your new bank balance is $%.2f", bankBalance - total);
}


@end
