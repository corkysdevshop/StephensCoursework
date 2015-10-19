//
//  ViewController.m
//  heroDetail
//
//  Created by Stephen Printup on 10/16/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ViewController.h"
#import "Heroes.h"
#import "ExtraViewController.h"


@interface ViewController ()
{
    NSMutableArray *herosArray;
    NSString *heroName;
    NSString *heroDescription;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    herosArray = [[NSMutableArray alloc]init];
    
    Heroes *superMan = [[Heroes alloc]init];
    Heroes *batMan = [[Heroes alloc]init];
    Heroes *wonderWoman = [[Heroes alloc]init];
    Heroes *dash = [[Heroes alloc]init];
    Heroes *greenLantern = [[Heroes alloc]init];
    Heroes *spiderMan = [[Heroes alloc]init];
    
    superMan = [superMan initHeroName:@"Superman" andHeroDescription:@"Super Strength"];
    batMan = [batMan initHeroName:@"Batman" andHeroDescription:@"Utility Belt"];
    wonderWoman = [wonderWoman initHeroName:@"Wonder Woman" andHeroDescription:@"Magic Lasso"];
    dash = [dash initHeroName:@"Dash" andHeroDescription:@"Super Speed"];
    greenLantern = [greenLantern initHeroName:@"Green Lantern" andHeroDescription:@"Will Power"];
    spiderMan = [spiderMan initHeroName:@"Spiderman" andHeroDescription:@"Webs"];
    
    [herosArray addObject:superMan];
    [herosArray addObject:batMan];
    [herosArray addObject:wonderWoman];
    [herosArray addObject:dash];
    [herosArray addObject:greenLantern];
    [herosArray addObject:spiderMan];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
    
}


//table
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    //displaying hero name and description
    Heroes *heroObject = [herosArray objectAtIndex:indexPath.row];
    cell.textLabel.text = heroObject.heroName;
    cell.detailTextLabel.text = heroObject.heroDescription;
    
    //expanding row at index path
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [herosArray count];
}

//click
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Heroes *herosObject = [herosArray objectAtIndex:indexPath.row];
    heroName = herosObject.heroName;
    heroDescription = herosObject.heroDescription;
    [self performSegueWithIdentifier:@"push" sender:self];
}

//segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"push"])
    {
        ExtraViewController *evc = [segue destinationViewController];
//        evc.passNameString = heroName;
//        evc.passDescriptionString = heroDescription;
//[ ]Pass custom object to second VC
    }
}

@end
