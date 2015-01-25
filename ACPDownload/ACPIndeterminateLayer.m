//
//  ACPIndeterminateLayer.m
//  ACPDownload
//
//  Created by Palmero, Antonio on 1/16/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPIndeterminateLayer.h"
#import "ACPDownloadConstants.h"

@interface ACPIndeterminateLayer()

@property (nonatomic, readwrite) CAShapeLayer * layer;
@property (nonatomic, readwrite) UIColor * colorLayer;
@property (nonatomic, assign) CGRect frame;
@property (nonatomic, assign, readwrite, getter= isAnimating) BOOL animate;

@end

@implementation ACPIndeterminateLayer



- (CAShapeLayer *) layer {
    if (!_layer) {
        _layer = [CAShapeLayer layer];
        _layer.strokeColor = self.colorLayer.CGColor;
        _layer.fillColor = nil;
        _layer.lineWidth = 1.5f;
    }
    return _layer;
}

- (void)updateFrame:(CGRect)frame {
    self.frame = frame;
    self.layer.frame = frame;
    [self updatePath];

}

- (void)updatePath {
        
        CGPoint center = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        CGFloat radius = MIN(CGRectGetWidth(self.frame) / 2, CGRectGetHeight(self.frame) / 2) - self.layer.lineWidth / 2;
        CGFloat startAngle = (CGFloat)(-M_PI_4);
        CGFloat endAngle = (CGFloat)(3 * M_PI_2);
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
        self.layer.path = path.CGPath;

}

#pragma mark - 

- (void)startAnimating{
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"transform.rotation";
    animation.duration = 1.0f;
    animation.fromValue = @(0.0f);
    animation.toValue = @(2 * M_PI);
    animation.repeatCount = INFINITY;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [self.layer addAnimation:animation forKey:kACPRotationAnimationKey];
    self.animate = YES;

}
- (void)stopAnimating{
   
    if (!self.isAnimating)
        return;
    
    [self.layer removeAnimationForKey:kACPRotationAnimationKey];
    self.animate = NO;

}

- (void)updateColor:(UIColor*)color {
    self.layer.strokeColor = color.CGColor;
}
- (void)setHidden:(BOOL)hidden {
    self.layer.hidden = YES;
    
}
- (void)removeLayer {
    [self stopAnimating];
    [self.layer removeFromSuperlayer];
}
@end
