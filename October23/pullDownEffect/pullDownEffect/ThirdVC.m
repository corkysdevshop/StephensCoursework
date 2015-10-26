//
//  ThirdVC.m
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ThirdVC.h"
#import "SecondVC.h"

@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonAdd:(id)sender {
    SecondVC *svc;
    svc.textToPass = self.textField.text;
    
    [self.customDelegate addStringToArray:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
    
    NSLog(@"%@",self.textField.text);
}

@end
