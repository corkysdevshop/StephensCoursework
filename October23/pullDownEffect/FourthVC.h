//
//  FourthVC.h
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol delegateFourth <NSObject>

-(void)itemToPass;

@end

@interface FourthVC : UIViewController

@property (strong, nonatomic) id <delegateFourth> viewDrinks;
@property (weak, nonatomic) IBOutlet UILabel *labelItem;

@end
