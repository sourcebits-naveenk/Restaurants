//
//  Shape.m
//  Restaurants
//
//  Created by Naveen Katari on 09/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "Shape.h"
#import <QuartzCore/QuartzCore.h>

@implementation Shape

- (void)drawRect:(CGRect)rect {
    
    CGRect rectangle = CGRectMake(0, 100, 320, 100);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.5);
    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 0.5);
    CGContextFillRect(context, rectangle);
    [[UIColor colorWithRed:155.0f/255.0f green:155.0f/255.0f blue:155.0f/255.0f alpha:1.0f]setFill];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rectangle cornerRadius:25.0];
    [path fill];
}
@end
