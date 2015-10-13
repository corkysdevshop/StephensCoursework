//
//  ViewController.m
//  tableViewDisplay
//
//  Created by Stephen Printup on 10/13/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *newArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    newArray = [[NSMutableArray alloc]init];
    [newArray addObject:@"adkjf"];
    [newArray addObject:@"asdf"];
    [newArray addObject:@"afsdas"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *stringIdentifier = @"hi";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:stringIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:stringIdentifier];
    }
    
    cell.textLabel.text = newArray[indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [newArray count];
}

- (IBAction)buttonSubmit:(id)sender {
    [self addTextToArrayAndTable];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self addTextToArrayAndTable];
    return YES;
}


//add things
-(void)addTextToArrayAndTable
{
    //general
    
    NSIndexPath *placementOfNewCell = [NSIndexPath indexPathForRow:0 inSection:0];
    NSArray *arrayOfPaths = @[placementOfNewCell];
    
    //animation
    [self.tableView beginUpdates];
    [newArray insertObject:self.textFieldInput.text atIndex:0];
    [self.tableView insertRowsAtIndexPaths:arrayOfPaths withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView endUpdates];
    
    self.textFieldInput.text = @"";
}

//edit things
- (IBAction)buttonEdit:(id)sender {
    //general
//    self.tableView.editing = !self.tableView.editing;
    
    //COOL
    [self.tableView setEditing:!self.tableView.editing animated:YES];
}


//delete things
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *whatEver = @[indexPath];
    [self.tableView beginUpdates];
    
    [self.tableView deleteRowsAtIndexPaths:whatEver withRowAnimation:UITableViewRowAnimationBottom];
    [newArray removeObjectAtIndex:indexPath.row];
    //[self.tableView reloadData];
    
    [self.tableView endUpdates];
    
    NSLog(@"%@",newArray);
}

@end
