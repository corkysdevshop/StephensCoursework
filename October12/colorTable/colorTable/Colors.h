//
//  Colors.h
//  colorTable
//
//  Created by Stephen Printup on 10/12/15.
//  Copyright © 2015 Stephen Printup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Colors : NSObject
@property (nonatomic, strong) NSString *colorName;
@property (nonatomic, strong) UIColor *colorActual;

- (instancetype)initColor:(NSString *)colorNamePassed andwith:(UIColor *)colorActualPassed;


@end
