//
//  Heroes.m
//  heroDetail
//
//  Created by Stephen Printup on 10/16/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "Heroes.h"

@implementation Heroes

- (instancetype)initHeroName:(NSString *)heroName andHeroDescription:(NSString *)heroDescription
{
    self = [super init];
    if (self) {
        self.heroName = heroName;
        self.heroDescription =heroDescription;
    }
    return self;
}

@end
