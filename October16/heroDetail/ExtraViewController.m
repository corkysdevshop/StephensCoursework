//
//  ExtraViewController.m
//  heroDetail
//
//  Created by Stephen Printup on 10/16/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "ExtraViewController.h"
#import "ViewController.h"

@interface ExtraViewController ()

@end

@implementation ExtraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //labels
    self.labelHeroName.text = self.passNameString;
    self.labelHeroDescripton.text = self.passDescriptionString;
    
    //textfields
    self.textFieldHeroName.text = self.passNameString;
    self.textFieldHeroDescription.text = self.passDescriptionString;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.labelHeroName.text = self.textFieldHeroName.text;
    self.labelHeroDescripton.text = self.textFieldHeroDescription.text;
    
    return YES;
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
