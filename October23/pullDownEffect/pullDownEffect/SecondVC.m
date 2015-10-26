//
//  SecondVC.m
//  pullDownEffect
//
//  Created by Stephen Printup on 10/23/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "SecondVC.h"
#import "FourthVC.h"

@interface SecondVC ()
{
    NSMutableArray *arrayOfThings;
    NSString *indexPathForNewObject;
}
@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create array
    arrayOfThings = [[NSMutableArray alloc]initWithObjects: @"hoverboards", @"self-lacing shoes", @"delorians", nil];
    
}

//createtable
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [arrayOfThings objectAtIndex:indexPath.row];
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfThings count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"pushToFourth" sender:self];
}

//seque to VC3
- (IBAction)buttonAdd:(id)sender {}

//pop to VC2 with text to pass into array
-(void)addStringToArray:(NSString *)message
{
    [arrayOfThings addObject:message];
    [self.tableView reloadData];
    NSLog(@"%@",arrayOfThings);
}

//seques
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"push"]){
        ThirdVC *tvc = [segue destinationViewController];
        tvc.customDelegate = self;
    }
    else if ([segue.identifier isEqualToString:@"pushToFourth"])
    {
        FourthVC *fvc = [segue destinationViewController];
        fvc.viewDrinks = self;
    }
}


@end








