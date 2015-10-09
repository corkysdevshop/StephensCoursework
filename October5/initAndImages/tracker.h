//
//  tracker.h
//  initAndImages
//
//  Created by Stephen Printup on 10/5/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tracker : NSObject

@property (strong, nonatomic) NSString *hairColor;
-(void) loggingProperties;
- (instancetype)initWithName:(NSString *)newName;



@end
