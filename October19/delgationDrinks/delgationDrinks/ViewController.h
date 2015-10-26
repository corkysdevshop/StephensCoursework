//
//  ViewController.h
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.

//[ ]add descriptions

#import <UIKit/UIKit.h>
#import "SecondVC.h"
#import "ThirdVC.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, textToPassDelegate, addDrinksDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

