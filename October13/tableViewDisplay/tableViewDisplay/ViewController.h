//
//  ViewController.h
//  tableViewDisplay
//
//  Created by Stephen Printup on 10/13/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldInput;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

