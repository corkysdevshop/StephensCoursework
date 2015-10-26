//
//  FourthVC.h
//  fourVCs
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sendNSLogDelegate

-(void)sendNSLog:(NSString *)stringToPass;

@end

@interface FourthVC : UIViewController

@property (strong, nonatomic) id <sendNSLogDelegate> delegateCustom;

@end
