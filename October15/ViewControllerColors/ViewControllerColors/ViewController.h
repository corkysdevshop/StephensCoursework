//
//  ViewController.h
//  ViewControllerColors
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondTVViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

