//
//  ViewController.m
//  ViewControllerColors
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"
#import "Colors.h"

@interface ViewController ()
{
    NSMutableArray *colorArray;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorArray = [[NSMutableArray alloc]init];
    
    Colors *redColor = [[Colors alloc]init];
    Colors *orangeColor = [[Colors alloc]init];
    Colors *yellowColor = [[Colors alloc]init];
    Colors *greenColor = [[Colors alloc]init];
    Colors *blueColor = [[Colors alloc]init];
    Colors *purpleColor = [[Colors alloc]init];
    
    
    [colorArray addObject:[redColor initForColorswith:@"Red" with:[UIColor redColor]]];
    [colorArray addObject:[orangeColor initForColorswith:@"Orange" with:[UIColor orangeColor]]];
    [colorArray addObject:[yellowColor initForColorswith:@"Yellow" with:[UIColor yellowColor]]];
    [colorArray addObject:[greenColor initForColorswith:@"Green" with:[UIColor greenColor]]];
    [colorArray addObject:[blueColor initForColorswith:@"Blue" with:[UIColor blueColor]]];
    [colorArray addObject:[purpleColor initForColorswith:@"Purple" with:[UIColor purpleColor]]];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    Colors *newVariable = [colorArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = newVariable.colorName;
    cell.backgroundColor = newVariable.colorActual;
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colorArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"push" sender:self];
}














@end
