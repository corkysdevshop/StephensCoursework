//
//  mathClass.m
//  ibAction
//
//  Created by Stephen Printup on 10/1/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "mathClass.h"

@implementation mathClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentValue = 10;
    }
    return self;
}

-(void) addTwoToThisNumber:(int)numberToAdd
{
    self.currentValue = self.currentValue + 2;
    NSLog(@"%d", numberToAdd +2);
}

@end
