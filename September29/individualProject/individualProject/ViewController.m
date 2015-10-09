//
//  ViewController.m
//  individualProject
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
// ________________ Challenge 1 ________________
//  [X]Check to see if a string has less than, greater than or equal to 5 characters.
/*
    NSString *string1 = @"Jxtd.";
    int string1length = string1.length;
//[?]how to use @property(readonly) NSUInteger length from documentation
        if (string1length > 5) {
            NSLog(@"string1 is greater than 5");
        };
        if (string1length < 5) {
            NSLog(@"string1 is less than 5");
        };
        if (string1length == 5) {
            NSLog(@"string1 is equal to 5");
        };
*/
    
//      [ ]Put into seperate method
//
/*
    Pull the following code out below the viewDidLoad
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {// 
//[X] I totally forgot how to reproduce this
//- (returnvalue) nameOfMethod: (typeOfParameter)nameOfParameter {}

 - (void)
    
        NSString *string1 = @"Jxtd.";
        int string1length = string1.length; //[?]how to use @property(readonly) NSUInteger length from documentation
        if (string1length > 5) {
            NSLog(@"string1 is greater than 5");
        };
        if (string1length < 5) {
            NSLog(@"string1 is less than 5");
        };
        if (string1length == 5) {
            NSLog(@"string1 is equal to 5");
        };
    }
*/
    
//      [X]Pass second string to compare the two words, say character difference
    
/*
    NSString *string1 = @"Just some text.";
    NSString *string2 = @"Just some more text.";
    
    int string1length = string1.length;
    int string2length = string2.length;
    
    if (string1length > string2length) {
        NSLog(@"string 1 is greater than string 2");
    }
    if (string1length < string2length) {
        NSLog(@"string 2 is greater than string 1");
    }
    if (string1length == string2length) {
        NSLog(@"string 1 and string 2 are equal lengths");
    }
 */

    
    
    
// ________________ Challenge 2 ________________
//  [X]Grading Paper Challenge but put into seperate method
//      [X]Use only one NSLog
/*
    //keep in view did load
    int score = 104;
    NSString *grade = [self paperGrader:score];
    NSLog(@"You recieved a grade of %@", grade);
    
    //put outside view did load
    - (NSString*)paperGrader:(int)grade {
        if (grade < 0)
        {
            return @"less than zero";
        }
        else if (grade <= 59)
        {
            return @"F";
        }
        else if (grade <= 69)
        {
            return @"D";
        }
        else if (grade <= 79){
            return @"C";
        }
        else if (grade <= 89) {
            return @"B";
        }
        else if (grade <= 99) {
            return @"A";
        }
        else {
            return @"higher than 100";
        }
        return @"test";
    }
    */

//[?]How do I return a string into view did load?

    
// ________________ Challenge 3 ________________
//  [ ]NSLog current date, look into NSDate
//    NSLog(NSDateFormatterShortStyle);
/*
    NSLog(NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]);
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy"];
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
 */
 

//      [ ]Compare that current date & NSLog how many seconds has passed since 1970

//      [ ]NSLog how many days & years has passed since 1970
//      [ ]NSLog just the current year
    
    
}





@end
