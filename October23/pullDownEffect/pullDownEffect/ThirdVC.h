//
//  ThirdVC.h
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol delegateSecond

-(void)addStringToArray:(NSString *)message;

@end

@interface ThirdVC : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) id <delegateSecond> customDelegate;

@end
