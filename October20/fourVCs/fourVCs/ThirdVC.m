//
//  ThirdVC.m
//  fourVCs
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ThirdVC.h"

@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FourthVC *fvc = [segue destinationViewController];
    fvc.delegateCustom = self.delegateCustom;
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
