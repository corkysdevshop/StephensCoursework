//
//  SecondVC.h
//  delegation
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol customDelegate

-(void)superImportantMessage:(NSString *)message;

@end

@interface SecondVC : UIViewController

@property (strong, nonatomic) id <customDelegate> delegateCustom;

@end
