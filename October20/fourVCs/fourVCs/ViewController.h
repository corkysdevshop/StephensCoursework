//
//  ViewController.h
//  fourVCs
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface ViewController : UIViewController <sendNSLogDelegate>

@property (strong, nonatomic) id <sendNSLogDelegate> delegateCustom;

@end

