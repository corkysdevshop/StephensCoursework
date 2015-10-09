//
//  tracker.m
//  initAndImages
//
//  Created by Stephen Printup on 10/5/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import "tracker.h"

@interface tracker()

@property (strong, nonatomic) NSString *currentName;

@end
@implementation tracker
{
    int weight;
}


- (instancetype)initWithName:(NSString *)newName
{
    self = [super init];
    if (self) {
        self.currentName = newName;
        weight = 150;
        self.hairColor = newName;
    }
    return self;
}

-(void) loggingProperties
{
    NSLog(@"current name is %@, current hair color is %@, with a weight of %d", self.currentName, self.hairColor, weight);
}

/*
//setter
-(void) setCurrentWeight:(int)newWeight
{
    weight = newWeight - 5;
}

//getter
-(int) getBankAccountBalance
{
    return weight;
}
*/

@end
