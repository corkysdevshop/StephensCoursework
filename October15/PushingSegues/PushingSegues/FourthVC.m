//
//  FourthVC.m
//  PushingSegues
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "FourthVC.h"
#import "FifthVC.h"

@interface FourthVC ()

@end

@implementation FourthVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelFourthVC.text = self.passToFourth;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//push connection vc4-vc5
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString:@"pushToFifth"]) {
//        FifthVC *ftvc = [segue destinationViewController];
//        ftvc.passToFifth = self.labelFourthVC.text;
//    }
// }


//modal connection vc4-vc5
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"navToFifth"])
    {
        UINavigationController *nav = [segue destinationViewController];
        FifthVC *ftvc = (FifthVC *)[nav topViewController];
        ftvc.passToFifth = self.labelFourthVC.text;
    }
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//    {
//        if ([segue.identifier isEqualToString:@"pushToFourth"])
//        {
//            FourthVC *fvc = [segue destinationViewController];
//            fvc.passToFourth = self.labelInThird.text;
//        }
//    }
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
