//
//  SecondVC.h
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdVC.h"
#import "FourthVC.h"

@interface SecondVC : UIViewController <UITableViewDataSource, UITableViewDelegate, delegateSecond>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSString *textToPass;

@end
