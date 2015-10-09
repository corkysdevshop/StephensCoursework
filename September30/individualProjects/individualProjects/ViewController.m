//
//  ViewController.m
//  individualProjects
//
//  Created by Stephen Printup on 9/30/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//__________ Challenge 1 __________
    
//  Evaluate a string to see if >, < , or == to 5 chars
    
//[X] 2 labels, one displaying the word, the second label saying if >, < or ==
/*REVIEWED
     NSString *string = @"something awesome";
     NSInteger stringlength = [string length];
    
     NSInteger fiveChars = 5;
    
     NSString *declaration;
     
     if (stringlength > fiveChars) {
     declaration = @"Sentence is > 5 characters";
     }
     else if (stringlength < fiveChars) {
     declaration = @"Sentence is < 5 characters";
     }
     if (stringlength == fiveChars) {
     declaration = @"Sentence is = 5 characters";
     }
    
     self.string.text = string;
     self.declaration.text = declaration;
*/
    
//[X] add another string to compare against, add label for it & say which is greater
 /*REVIEWED
    NSString *string1 = @"string 1";
    NSString *string2 = @"string 1";
    
    NSInteger string1length = [string1 length];
    NSInteger string2length = [string2 length];
    
    NSString *message;
    
    if (string1length > string2length) {
        message = @"sentence 1 is longer than sentence 2";
    }
    else if (string1length < string2length) {
        message = @"sentence 1 is shorter than sentence 2";
    }
    if (string1length == string2length) {
        message = @"sentence 1 is the same length as sentence 2";
    }
    self.compare2Strings.text = message;
*/
    
//[X] have the label go green if larger, red if smaller

    NSString *string1 = @"stringasdf1";
    NSString *string2 = @"string 12";
    
    NSInteger string1length = [string1 length];
    NSInteger string2length = [string2 length];
    
    NSString *message;

    if (string1length > string2length) {
        message = @"sentence 1 is longer than sentence 2";
        self.compare2Strings.backgroundColor = [UIColor greenColor];
    }
    else if (string1length < string2length) {
        message = @"sentence 1 is shorter than sentence 2";
        self.compare2Strings.backgroundColor = [UIColor redColor];
    }
    if (string1length == string2length) {
        message = @"sentence 1 is the same length as string 2";
    }
    self.compare2Strings.text = message;
    
    UIColor *newBackgroundColor = [UIColor blueColor];
    newBackgroundColor = [UIColor redColor];
    
    

    
/* __________ Challenge 2 __________
    NSLog all numbers beween 0-100 unless
    if multiple of 3 say 'fizz'
    if multiple of 5 say 'buzz'
    if multiple of 3 & 5 say 'fizzbuzz'
    [X] have 0 say number instead of fizzbuzz
    [ ] only check for multiple of 3 once
    [ ] put label on screw to say what number it goes up to 
    [ ]label how many fizzers, buzzes & fizzbuzzes
    [ ]also add what the least fizz number was & buzz, & fizzbuzz
*/
    /*
    for (int i = 0; i <= 100; i++) {
        if (i == 0) {
            NSLog(@"0");
            continue;
        }
        if (i % 3 == 0 && i % 5 == 0)
        {
            NSLog(@"FizzBuzz");
            continue;
        }
        if (i % 3 == 0)
        {
            NSLog(@"Fizz");
            continue;
        }
        else if (i % 5 == 0)
        {
            NSLog(@"Buzz");
            continue;
        }

        
        NSLog(@"%d",i);
    }
    */
}




@end
