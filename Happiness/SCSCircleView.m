//
//  SCSCircleView.m
//  Happiness
//
//  Created by Anson Yu Wang on 13-9-25.
//  Copyright (c) 2013年 Anson Yu Wang. All rights reserved.
//

#import "SCSCircleView.h"

@implementation SCSCircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
//    CGRect innerRect = CGRectMake(rect.origin.x + 2, rect.origin.y + 2, rect.size.width - 4, rect.size.height - 4);
    [[UIColor blueColor] setStroke];
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:rect];
    circle.lineWidth = 8;
    [circle addClip];
    [circle stroke];
}

@end
