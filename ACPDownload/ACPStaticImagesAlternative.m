//
//  ACPStaticImagesAlternative.m
//  ACPDownload
//
//  Created by Palmero, Antonio on 1/19/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPStaticImagesAlternative.h"

@implementation ACPStaticImagesAlternative

@synthesize strokeColor,bounds;

- (void)updateFrame:(CGRect)frame {
    self.bounds = frame;
}

- (void)updateColor:(UIColor*)color {
    self.strokeColor = color;
}

- (void) drawStatusNone{
    CGRect frameContainer;
    frameContainer.origin.x = CGRectGetMidX(self.bounds) - self.bounds.size.width / 3;
    frameContainer.origin.y = CGRectGetMidY(self.bounds) - self.bounds.size.height / 3;
    frameContainer.size.width = self.bounds.size.width / 1.5;
    frameContainer.size.height = self.bounds.size.height / 1.5;
    
    CGRect groupInFrame = CGRectMake(CGRectGetMinX(frameContainer) + floor(CGRectGetWidth(frameContainer) * 0.09375 + 0.5), CGRectGetMinY(frameContainer) + floor(CGRectGetHeight(frameContainer) * 0.02539 + 0.5), floor(CGRectGetWidth(frameContainer) * 0.90625 + 0.5) - floor(CGRectGetWidth(frameContainer) * 0.09375 + 0.5), floor(CGRectGetHeight(frameContainer) * 1.00000 + 0.5) - floor(CGRectGetHeight(frameContainer) * 0.02539 + 0.5));
    
    //Arrow
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.28199 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.49896 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.24671 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.52837 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.50026 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.73975 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.75381 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.52837 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.71853 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.49896 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.52521 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.66013 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.52521 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.00179 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.47531 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.00179 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.47531 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.66013 * CGRectGetHeight(groupInFrame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.28199 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.49896 * CGRectGetHeight(groupInFrame))];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    [self.strokeColor setFill];
    [bezierPath fill];
    
    
    //Cube
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.62499 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.20975 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.62499 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.25134 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.94928 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.25134 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.94928 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.95841 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.05125 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.95841 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.05125 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.25134 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.37553 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.25134 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.37553 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.20975 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.00135 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.20975 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.00135 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 1.00000 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.99917 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 1.00000 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.99917 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.20975 * CGRectGetHeight(groupInFrame))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(groupInFrame) + 0.62499 * CGRectGetWidth(groupInFrame), CGRectGetMinY(groupInFrame) + 0.20975 * CGRectGetHeight(groupInFrame))];
    [bezier2Path closePath];
    bezier2Path.miterLimit = 4;
    
    [self.strokeColor setFill];
    [bezier2Path fill];
    
    
    
    
}
- (void) drawStatusIndeterminate{
    //Nothing, just the layer animation.
}
- (void) drawStatusRunning{
    
    CGPoint center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    CGFloat radius = (MIN(CGRectGetWidth(self.bounds) / 2, CGRectGetHeight(self.bounds) / 2))-1;
    CGFloat startAngle = (CGFloat)(0);
    CGFloat endAngle = (CGFloat)(2*M_PI);
    
    
    //// The circle
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
    
    //// The stop in the middle
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
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.22500 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.22500 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.77500 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.22500 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 0.77500 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 1.00000 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.77500 * CGRectGetHeight(frameContainer))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer)) controlPoint1: CGPointMake(CGRectGetMinX(frameContainer) + 1.00000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.22500 * CGRectGetHeight(frameContainer)) controlPoint2: CGPointMake(CGRectGetMinX(frameContainer) + 0.77500 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.50000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.00000 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.40000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72500 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.40000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.27500 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.70000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.50000 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.40000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72500 * CGRectGetHeight(frameContainer))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frameContainer) + 0.40000 * CGRectGetWidth(frameContainer), CGRectGetMinY(frameContainer) + 0.72500 * CGRectGetHeight(frameContainer))];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    bezierPath.usesEvenOddFillRule = YES;
    
    [self.strokeColor setFill];
    [bezierPath fill];
    
}



@end
