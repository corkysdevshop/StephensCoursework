//
//  ViewController.m
//  TableViewDeleting
//
//  Created by Stephen Printup on 10/13/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfInfo;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayOfInfo = [[NSMutableArray alloc]init];
    [arrayOfInfo addObject:@"Hello"];
    [arrayOfInfo addObject:@"Goodbye"];
    [arrayOfInfo addObject:@"Sup"];
    [arrayOfInfo addObject:@"Portlanders Hello"];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *stringIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:stringIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:stringIdentifier];
    }
    
    cell.textLabel.text = [arrayOfInfo objectAtIndex:indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfInfo count];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath //swipe, without button pressed
{
    //delete things
    NSArray *arrayOfPaths = @[indexPath];
    
    [tableView beginUpdates];
    
    [self.tableView deleteRowsAtIndexPaths:arrayOfPaths withRowAnimation:UITableViewRowAnimationFade];
    [arrayOfInfo removeObjectAtIndex:indexPath.row];
    
    [tableView endUpdates];
}

- (IBAction)presssedButton:(id)sender
{
    self.tableView.editing = !self.tableView.editing; //button pressed
}


@end
