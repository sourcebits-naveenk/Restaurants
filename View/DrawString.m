//
//  DrawString.m
//  Restaurants
//
//  Created by Naveen Katari on 10/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "DrawString.h"

@implementation DrawString
- (void)drawText:(CGFloat)xPosition yPosition:(CGFloat)yPosition canvasWidth:(CGFloat)canvasWidth canvasHeight:(CGFloat)canvasHeight
{
    CGRect textRect = CGRectMake(xPosition, yPosition, canvasWidth, canvasHeight);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentCenter;
    
    NSDictionary* stringFontAttributes = @{
                                         
                                         NSFontAttributeName: [UIFont fontWithName: @"Futura" size: 36], NSForegroundColorAttributeName: UIColor.blueColor
                                         };
    
    [@"Order Succesfully Placed" drawInRect: textRect withAttributes: stringFontAttributes];
}


- (void)drawRect:(CGRect)rect
{
    [self drawText:0 yPosition:30 canvasWidth:300 canvasHeight:150];
    
}
@end
