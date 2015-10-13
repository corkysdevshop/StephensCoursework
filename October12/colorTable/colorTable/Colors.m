//
//  Colors.m
//  colorTable
//
//  Created by Stephen Printup on 10/12/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "Colors.h"

@implementation Colors

- (instancetype)initColor:(NSString *)colorNamePassed andwith:(UIColor *)colorActualPassed
{
    self = [super init];
    if (self) {
        self.colorName = colorNamePassed;
        self.colorActual = colorActualPassed;
    }
    return self;
}

@end