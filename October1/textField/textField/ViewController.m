//
//  ViewController.m
//  textField
//
//  Created by Stephen Printup on 10/1/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int minLength;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    minLength = 7;
}

- (IBAction)enterClicked:(id)sender {
    NSString *userName = self.userNameInput.text;
    NSString *password = self.passwordInput.text;
    
    if (userName.length < minLength) {
        self.userNameInput.backgroundColor = [UIColor redColor];
        self.usernameErrorLabel.hidden = NO;
    }
    else {
        self.userNameInput.backgroundColor = [UIColor greenColor];
        self.usernameErrorLabel.hidden = YES;
    }
    
    
    if (password.length < minLength) {
        self.passwordInput.backgroundColor = [UIColor redColor];
        self.passwordErrorLabel.hidden = NO;
    }
    else {
        self.passwordInput.backgroundColor = [UIColor greenColor];
        self.passwordErrorLabel.hidden = YES;
    }
}


@end
