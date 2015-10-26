//
//  ThirdVC.h
//  delgationDrinks
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol addDrinksDelegate

-(void)addDrink:(NSString *)newDrinkToPass;

@end


@interface ThirdVC : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldDrinktoAdd;
@property (strong, nonatomic) id <addDrinksDelegate> delegateCustom;

@end
