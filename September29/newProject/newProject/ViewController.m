//
//  ViewController.m
//  newProject
//
//  Created by Stephen Printup on 9/29/15.
//  Copyright (c) 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *newWord = @"Hello World";
    NSLog(@"%p", newWord);
    
    NSString *newVersion = [self capitalizationExpert:newWord];
    
}

-(NSString *)capitalizationExpert: (NSString *)wordToCapitalize
{
    NSLog(@"%p", wordToCapitalize);
    
    NSString *capitalizedWord = [wordToCapitalize uppercaseString];
    NSLog(@"%p", capitalizedWord);
    
    return capitalizedWord;
}


@end
