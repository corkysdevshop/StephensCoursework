//
//  ViewController.m
//  colorTable
//
//  Created by Stephen Printup on 10/12/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"
#import "Colors.h"

@interface ViewController ()
{
    NSMutableArray *arrayOfColors;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Colors *redObject = [[Colors alloc]initColor:@"red" andwith:[UIColor redColor]];
    Colors *orangeObject = [[Colors alloc]initColor:@"orange" andwith:[UIColor orangeColor]];
    Colors *yellowObject = [[Colors alloc]initColor:@"yellow" andwith:[UIColor yellowColor]];
    Colors *greenObject = [[Colors alloc]initColor:@"green" andwith:[UIColor greenColor]];
    Colors *blueObject = [[Colors alloc]initColor:@"blue" andwith:[UIColor blueColor]];
    Colors *purpleObject = [[Colors alloc]initColor:@"purple" andwith:[UIColor purpleColor]];
    
    
    arrayOfColors = [[NSMutableArray alloc]init];
    [arrayOfColors addObject:redObject];
    [arrayOfColors addObject:orangeObject];
    [arrayOfColors addObject:yellowObject];
    [arrayOfColors addObject:greenObject];
    [arrayOfColors addObject:blueObject];
    [arrayOfColors addObject:purpleObject];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfColors count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    NSString *cellIdentifier = @"cell";
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    Colors *object = arrayOfColors[indexPath.row];
    NSString *stringOfObject = object.colorName;
    cell.textLabel.text = stringOfObject;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Colors *object = arrayOfColors[indexPath.row];
    UIColor *colorOfObject = object.colorActual;
    self.view.backgroundColor = colorOfObject;
    
    UITableViewCell *cellThatWasClicked = [tableView cellForRowAtIndexPath:indexPath];
    cellThatWasClicked.backgroundColor = colorOfObject;
    
}


@end




