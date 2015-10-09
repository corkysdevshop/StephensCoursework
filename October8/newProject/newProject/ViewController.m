//
//  ViewController.m
//  newProject
//
//  Created by Stephen Printup on 10/8/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc]init];
    
    [newDictionary setObject:@"Test" forKey:@"one"];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults]; //pulling stored area from device
    [defaults setObject:@"Test" forKey:@"One"]; //setting information
    [defaults synchronize]; //committing changes
    
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return @"AWESOME SAUCE";
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

@end
