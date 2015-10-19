//
//  SecondVC.m
//  PushingSegues
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "SecondVC.h"
#import "ThirdVC.h"
#import "ViewController.h"

@interface SecondVC ()
{
    NSMutableArray *allViewControllers;
}
@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    allViewControllers = [[NSMutableArray alloc]init];
    allViewControllers = [NSMutableArray arrayWithArray: self.navigationController.viewControllers];
    [allViewControllers removeObjectAtIndex:0];
    self.navigationController.viewControllers = allViewControllers;
    
    self.labelSecondVC.text = self.passString;
}

//modal connection vc2-vc3
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"navToThird"])
    {
        UINavigationController *nav = [segue destinationViewController];
        ThirdVC *tvc = (ThirdVC *)[nav topViewController];
        tvc.passToThird = self.labelSecondVC.text;
    }
}

//if ([segue.identifier isEqualToString:@"My First Segue Identifier"])
//{
//    NavitationViewController* navController = [segue destinationViewController];
//    DetailsViewController *dvc = (DetailsViewController*) [navController topViewController]
//    // Set the DVC's properties
//}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
