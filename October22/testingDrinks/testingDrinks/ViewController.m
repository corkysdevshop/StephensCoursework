//
//  ViewController.m
//  testingDrinks
//
//  Created by Stephen Printup on 10/22/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfDrinks;
    NSString *pathObject;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayOfDrinks = [[NSMutableArray alloc]init];
    [arrayOfDrinks addObject:@"orange juice"];
    [arrayOfDrinks addObject:@"apple juice"];
    [arrayOfDrinks addObject:@"grape juice"];
    
    self.tableView.accessibilityIdentifier = @"MyTableView";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
//    cell.textLabel.text =@"Hello";
    cell.textLabel.text = [arrayOfDrinks objectAtIndex:indexPath.row];
    
    //testing: setting acessiblity identifier
//    cell.textLabel.accessibilityIdentifier = [NSString stringWithFormat:@"IDFirst%ld", (long)indexPath.row];
//    cell.textLabel.accessibilityIdentifier = [NSString stringWithFormat:@"IDSecond%ld", (long)indexPath.row];

    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfDrinks count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    pathObject = [arrayOfDrinks objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"push" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"push"])
    {
        SecondVC *svc = [segue destinationViewController];
        svc.stringToSend = pathObject;
    }
}
@end
