//
//  ViewController.m
//  fizzBuzzIndividual
//
//  Created by Stephen Printup on 10/2/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
//[ ]Add functionality for last fizz, buzz or fizzbuzz
- (IBAction)buttonSubmit:(id)sender {
    int testValue = self.textInput.text.intValue;
    
    int fizzTotal = 0;
    int buzzTotal = 0;
    int fizzBuzzTotal = 0;
    
    for (int i = 0; i <=testValue; i++)
    {
        if (i == 0)
        {
            NSLog(@"%d", i);
            continue;
        }
        else if (!(i%3))
        {
            if (!(i%5))
            {
                NSLog(@"FizzBuzz");
                fizzBuzzTotal++;
                continue;
            }
            NSLog(@"Fizz");
            fizzTotal++;
            continue;
        }
        else if (!(i%5))
        {
            NSLog(@"Buzz");
            buzzTotal++;
            continue;
        }
        else
        {
            NSLog(@"%d",i);
        }
    }
    
   
    self.labelFizzTotal.text = [NSString stringWithFormat:@"%d",fizzTotal];
    self.labelBuzzTotal.text = [NSString stringWithFormat:@"%d",buzzTotal];
    self.labelFizzBuzzTotal.text = [NSString stringWithFormat:@"%d",fizzBuzzTotal];
    
}


@end
