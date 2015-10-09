//
//  ViewController.m
//  day7
//
//  Created by Stephen Printup on 10/6/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"
#import "tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    tracker *newTracker = [[tracker alloc] init];
//    newTracker.hairColor = @"Brown";
//    
//    NSArray *newArray = @[newTracker];
//    
//    NSString *hairColor =  ((tracker *)[newArray objectAtIndex:0]).hairColor;
//    NSLog(@"%@", hairColor);
//    
//    newTracker.hairColor = @"Red";
//    
//    NSString *secondHairColor =  ((tracker *)[newArray objectAtIndex:0]).hairColor;
//
//    NSLog(@"%@", secondHairColor);


    
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    
    tracker *firstTrackedObject = [[tracker alloc]init];
    firstTrackedObject.hairColor = @"Brown";
    [newArray addObject:firstTrackedObject];
    
    tracker *secondTrackedObject = [[tracker alloc]init];
    secondTrackedObject.hairColor = @"Red";
    [newArray addObject:secondTrackedObject];
    
    tracker *thirdTrackedObject = [[tracker alloc]init];
    thirdTrackedObject.hairColor = @"Blonde";
    [newArray addObject:thirdTrackedObject];
    
    tracker *fourthTrackedObject = [[tracker alloc]init];
    fourthTrackedObject.hairColor = @"Blonde";
    [newArray addObject:fourthTrackedObject];
    
    [newArray removeObjectAtIndex:2];
    
    tracker *objectFromArray = [newArray objectAtIndex:0];
    NSLog(@"%@", objectFromArray.hairColor);
    
    
}



@end
