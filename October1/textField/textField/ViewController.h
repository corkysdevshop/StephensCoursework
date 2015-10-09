//
//  ViewController.h
//  textField
//
//  Created by Stephen Printup on 10/1/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userNameInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;
@property (weak, nonatomic) IBOutlet UILabel *passwordErrorLabel;
@property (weak, nonatomic) IBOutlet UILabel *usernameErrorLabel;



@end

