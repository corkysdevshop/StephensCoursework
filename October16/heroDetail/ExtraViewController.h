//
//  ExtraViewController.h
//  heroDetail
//
//  Created by Stephen Printup on 10/16/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExtraViewController : UIViewController <UITextFieldDelegate>

//varibles
@property (strong, nonatomic) NSString *heroName;
@property (strong, nonatomic) NSString *heroDescription;
//segue
@property (strong,nonatomic) NSString *passNameString;
@property (strong,nonatomic) NSString *passDescriptionString;
//labels
@property (weak, nonatomic) IBOutlet UILabel *labelHeroName;
@property (weak, nonatomic) IBOutlet UILabel *labelHeroDescripton;
//textfields
@property (weak, nonatomic) IBOutlet UITextField *textFieldHeroName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldHeroDescription;

@end
