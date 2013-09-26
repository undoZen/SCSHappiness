//
//  SCSSimleView.m
//  Happiness
//
//  Created by Anson Yu Wang on 13-9-26.
//  Copyright (c) 2013年 Anson Yu Wang. All rights reserved.
//

#import "SCSSmileView.h"

@implementation SCSSmileView {
    BOOL geometryIsSet;
    CGPoint leftCornerOfSmile, rightCornerOfSmile, controlPoint;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setGeometry {
    CGRect rect = self.bounds;
    CGFloat leftXValue = 10;
    CGFloat rightXValue = rect.size.width - leftXValue;
    CGFloat bottomYValue = rect.size.height;
    CGFloat verticalCenter = rect.size.height/2;
    CGFloat horizontalCenter = rect.size.width/2;
    leftCornerOfSmile = CGPointMake(leftXValue, verticalCenter);
    rightCornerOfSmile = CGPointMake(rightXValue, verticalCenter);
    controlPoint = CGPointMake(horizontalCenter, bottomYValue);
    geometryIsSet = YES;
}

- (void)drawRect:(CGRect)rect
{
    if (!geometryIsSet) {
        [self setGeometry];
    }
    [[UIColor blueColor] setStroke];
    UIBezierPath *smile = [UIBezierPath bezierPath];
    [smile moveToPoint:leftCornerOfSmile];
    [smile addQuadCurveToPoint:rightCornerOfSmile controlPoint:controlPoint];
    smile.lineWidth = 4;
    smile.lineCapStyle = kCGLineCapRound;
    [smile stroke];
}

@end
