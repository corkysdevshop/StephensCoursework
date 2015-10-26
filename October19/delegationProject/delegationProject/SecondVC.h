//
//  SecondVC.h
//  delegationProject
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

//make protocol; what methods are available for the delegate
//declaring methods; the methods that will be a part of the protocol

@protocol secondVCDelegate <NSObject>

-(void)messageToPass:(NSString *)message;
-(void)colorToPass:(UIColor *)color;

@end


//declaring delegate (sign up sheet "whoever wants to do this job, put name here"); way of communicating
@interface SecondVC : UIViewController <UITextFieldDelegate>

//define delegate
@property(strong, nonatomic) id <secondVCDelegate> delegateCustom;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *textFieldStart;


@end
