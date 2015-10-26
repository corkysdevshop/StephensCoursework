//
//  SecondVC.m
//  fourVCs
//
//  Created by Stephen Printup on 10/20/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ThirdVC *tvc = [segue destinationViewController];
    tvc.delegateCustom = self.delegateCustom;
    
}
@end
