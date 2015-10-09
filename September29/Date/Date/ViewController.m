//
//  ViewController.m
//  Date
//
//  Created by Stephen Printup on 9/29/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *today = [NSDate date];
    
    int secondsInDay = 24*60*60;
    int secondsInYear = 365*secondsInDay;
    int secondsInMonth = secondsInYear / 12;
    
    int secondsSince1970 = [today timeIntervalSince1970];
    int secondsLeft = secondsSince1970;
    
//    int minutes = secondsSince1970 / 60;
//    int hours = minutes / 60;
//    int days = hours / 24;
//    int years = days / 365;
//    int months = years * 12;
    
    int years = secondsLeft / secondsInYear;
    secondsLeft = secondsLeft - (years * secondsInYear);
    
    int months = secondsLeft / secondsInMonth;
    secondsLeft = secondsLeft - (months * secondsInMonth);
    
    int days = secondsLeft / secondsInDay;
    
    NSLog(@"It has been %i years, %i months, %i days since 1970", years, months, days);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"yyyy"];
    formatter.dateFormat = @"yyyy";
    NSLog(@"This year is %@", [formatter stringFromDate:today]);
}



@end
