//
//  FifthVC.m
//  PushingSegues
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "FifthVC.h"
#import "ViewController.h"

@interface FifthVC ()

@end

@implementation FifthVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.fifthVCLabel.text = self.passToFifth;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString:@"pushHome"]) {
//        ViewController *vc = [segue destinationViewController];
//        vc.passToHome = self.fifthVCLabel.text;
//    }
//}
- (IBAction)pressPushForHome:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
