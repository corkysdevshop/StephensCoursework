//
//  ViewController.m
//  delgationDrinks
//
//  Created by Stephen Printup on 10/19/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//
// [ ] add drink button fails to push to third VC

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *drinksArray;
    NSString *aDrink;
    NSIndexPath *currentItem;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    drinksArray = [[NSMutableArray alloc]init];
    
    [drinksArray addObject:@"beer"];
    [drinksArray addObject:@"soda"];
    [drinksArray addObject:@"water"];
    
}
-(void)passText:(NSString *)stringToPass
{
    [drinksArray replaceObjectAtIndex:currentItem.row withObject:stringToPass];
    [self.tableView reloadData];
    NSLog(@"%@",aDrink);
    NSLog(@"%@:",stringToPass);
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [drinksArray objectAtIndex:indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [drinksArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    currentItem = indexPath;
    aDrink = [drinksArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"modals" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"modals"])
    {
        //second VC
        SecondVC *svc = [segue destinationViewController];
        svc.selectedDrink = aDrink;
        
        svc.delegateCustom = self;
    }
    else
    {
        //third VC
        ThirdVC *tvc = [segue destinationViewController];
        tvc.delegateCustom = self;
    }
}

-(void)addDrink:(NSString *)newDrinkToPass
{
    [drinksArray addObject:newDrinkToPass];
    [self.tableView reloadData];
    NSLog(@"%@",drinksArray);
}

@end
