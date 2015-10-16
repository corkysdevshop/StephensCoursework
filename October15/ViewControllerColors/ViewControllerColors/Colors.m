//
//  Colors.m
//  ViewControllerColors
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "Colors.h"

@implementation Colors


- (instancetype)initForColorswith:(NSString *)colorName with:(UIColor *)colorActual
{
    self = [super init];
    if (self)
    {
        self.colorName = colorName;
        self.colorActual = colorActual;
    }
    return self;
}

@end
