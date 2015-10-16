//
//  Colors.h
//  ViewControllerColors
//
//  Created by Class on 10/15/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Colors : NSObject

@property(strong, nonatomic) NSString *colorName;
@property(strong, nonatomic) UIColor *colorActual;

- (instancetype)initForColorswith:(NSString *)colorName with:(UIColor *)colorActual;


@end
