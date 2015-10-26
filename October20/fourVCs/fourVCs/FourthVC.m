//
//  FourthVC.m
//  fourVCs
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "FourthVC.h"

@interface FourthVC ()

@end

@implementation FourthVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonVC4:(id)sender {
    [self.delegateCustom sendNSLog:@"String from fourth VC"];
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
