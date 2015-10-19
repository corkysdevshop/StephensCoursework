//
//  Heroes.h
//  heroDetail
//
//  Created by Stephen Printup on 10/16/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Heroes : NSObject
@property (strong, nonatomic) NSString *heroName;
@property (strong, nonatomic) NSString *heroDescription;

- (instancetype)initHeroName:(NSString *)heroName andHeroDescription:(NSString *)heroDescription;


@end
