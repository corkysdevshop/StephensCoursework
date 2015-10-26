//
//  SecondVC.h
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
//secondVC protocol
@protocol textToPassDelegate
-(void)passText:(NSString *)stringToPass;
@end

@interface SecondVC : UIViewController

@property (strong,nonatomic) NSString *selectedDrink;
@property (weak, nonatomic) IBOutlet UILabel *labelSVC;
@property (weak, nonatomic) IBOutlet UITextField *textField;

//secondVC delegate
@property (strong, nonatomic) id <textToPassDelegate> delegateCustom;

@end
