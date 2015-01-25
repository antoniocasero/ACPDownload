//
//  ACPStaticImages.m
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 18/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPStaticImages.h"

@implementation ACPStaticImages
@synthesize bounds, strokeColor;

- (void)updateFrame:(CGRect)frame {
    self.bounds = frame;
}

- (void) drawStatusNone{

    CGRect frameContainer;
    frameContainer.origin.x = CGRectGetMidX(self.bounds) - self.bounds.size.width / 3;
    frameContainer.origin.y = CGRectGetMidY(self.bounds) - self.bounds.size.height / 3;
    frameContainer.size.width = self.bounds.size.width / 1.5;
    frameContainer.size.height = self.bounds.size.height / 1.5;
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.48148 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.88542 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.36111 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.75000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.33333 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.78125 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.96875 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.66667 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.78125 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.63889 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.75000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.51852 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.88542 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.51852 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.41667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.48148 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.41667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.48148 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.88542 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.48148 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.88542 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.44444 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.18529 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.03704 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.10363 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.03704 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.59205 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.15189 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.33759 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.03704 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.42103 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.08610 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.35466 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.15189 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.33759 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.14815 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.29167 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.14943 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.32270 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.14815 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30735 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.37037 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04167 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.14815 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.15360 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.24764 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04167 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.58005 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.20867 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.46724 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04167 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.54963 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.11139 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.68519 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.16667 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.60873 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.18241 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.64532 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.16667 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.85128 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.33846 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.77253 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.16667 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.84418 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.24226 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.85128 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.33846 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.96296 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.91535 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.35680 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.96296 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.42217 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.81471 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.96296 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.59186 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.89659 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.55556 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.55556 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.81484 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.91710 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.61483 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.88455 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30690 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.41265 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.95234 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.33785 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.88455 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30690 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.68519 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.12500 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.86519 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.20301 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.78328 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.12500 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.59607 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.14804 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.65323 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.12500 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.62299 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.13328 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.37037 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.55153 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.05964 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.46714 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.11111 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.29167 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.22719 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.11111 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.13058 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.11155 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30881 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.11111 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.29742 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.11126 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30314 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.11155 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30881 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.04591 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.34090 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.41455 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.18516 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.61506 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.08268 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.44444 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.70833 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.44444 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.44444 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.44444 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.66667 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    bezierPath.usesEvenOddFillRule = YES;
    
    [self.strokeColor setFill];
    [bezierPath fill];
}
- (void) drawStatusIndeterminate{
    //Nothing, just the layer animation.
}
- (void) drawStatusRunning{
    
    CGPoint center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    CGFloat radius = (MIN(CGRectGetWidth(self.bounds) / 2, CGRectGetHeight(self.bounds) / 2))-1;
    CGFloat startAngle = (CGFloat)(0);
    CGFloat endAngle = (CGFloat)(2*M_PI);
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    [[UIColor clearColor] setFill];
    [ovalPath fill];
    [self.strokeColor setStroke];
    ovalPath.lineWidth = 1.5;
    [ovalPath stroke];
    
    CGRect page1 = self.bounds;
    page1.origin.x = CGRectGetMidX(self.bounds) - self.bounds.size.width / 8;
    page1.origin.y = CGRectGetMidY(self.bounds) - self.bounds.size.height / 8;
    page1.size.width = self.bounds.size.width / 4;
    page1.size.height = self.bounds.size.height /4;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: page1];
    [self.strokeColor setFill];
    [rectanglePath fill];

}
- (void) drawStatusComplete{

    CGRect frameContainer;

    frameContainer.origin.x = CGRectGetMidX(self.bounds) - self.bounds.size.width / 3;
    frameContainer.origin.y = CGRectGetMidY(self.bounds) - self.bounds.size.height / 3;
    frameContainer.size.width = self.bounds.size.width / 1.5;
    frameContainer.size.height = self.bounds.size.height / 1.5;
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.77614 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.77614 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.22386 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.77614 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.22386 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.22386 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.77614 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.22386 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.95455 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.95455 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.75104 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.95455 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.95455 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.75104 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04545 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.95455 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.24896 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.75104 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04545 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.04545 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.24896 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.04545 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.04545 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.24896 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.95455 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.04545 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.75104 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.24896 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.95455 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.30715 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72499 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.27501 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.69285 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.46786 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.27501 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30715 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.30715 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.27501 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.46786 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.69285 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.27501 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.72499 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.30715 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.53214 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.72499 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.69285 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.69285 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72499 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.53214 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.30715 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72499 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    bezierPath.usesEvenOddFillRule = YES;
    
    [self.strokeColor setFill];
    [bezierPath fill];
}


- (void)updateColor:(UIColor*)color {
    self.strokeColor = color;
}
@end
