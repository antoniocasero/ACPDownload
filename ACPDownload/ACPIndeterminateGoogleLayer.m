//
//  ACPIndeterminateGoogleLayer.m
//  ACPDownload
//
//  Created by Palmero, Antonio on 1/16/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPIndeterminateGoogleLayer.h"
#import "ACPDownloadConstants.h"

@interface ACPIndeterminateGoogleLayer()

@property (nonatomic, readwrite) CAShapeLayer * layer;
@property (nonatomic, readwrite) UIColor * colorLayer;
@property (nonatomic, assign) CGRect frame;
@property (nonatomic, assign, readwrite, getter= isAnimating) BOOL animate;

@end

@implementation ACPIndeterminateGoogleLayer



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
    
    CAMediaTimingFunction * timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"transform.rotation";
    animation.duration = 4.f;
    animation.fromValue = @(0.f);
    animation.toValue = @(2 * M_PI);
    animation.repeatCount = INFINITY;
    [self.layer addAnimation:animation forKey:kACPRotationAnimationKey];
    
    CABasicAnimation *headAnimation = [CABasicAnimation animation];
    headAnimation.keyPath = @"strokeStart";
    headAnimation.duration = 1.f;
    headAnimation.fromValue = @(0.f);
    headAnimation.toValue = @(0.25f);
    headAnimation.timingFunction = timingFunction;
    
    CABasicAnimation *tailAnimation = [CABasicAnimation animation];
    tailAnimation.keyPath = @"strokeEnd";
    tailAnimation.duration = 1.f;
    tailAnimation.fromValue = @(0.f);
    tailAnimation.toValue = @(1.f);
    tailAnimation.timingFunction = timingFunction;
    
    
    CABasicAnimation *endHeadAnimation = [CABasicAnimation animation];
    endHeadAnimation.keyPath = @"strokeStart";
    endHeadAnimation.beginTime = 1.f;
    endHeadAnimation.duration = 0.5f;
    endHeadAnimation.fromValue = @(0.25f);
    endHeadAnimation.toValue = @(1.f);
    endHeadAnimation.timingFunction = timingFunction;
    
    CABasicAnimation *endTailAnimation = [CABasicAnimation animation];
    endTailAnimation.keyPath = @"strokeEnd";
    endTailAnimation.beginTime = 1.f;
    endTailAnimation.duration = 0.5f;
    endTailAnimation.fromValue = @(1.f);
    endTailAnimation.toValue = @(1.f);
    endTailAnimation.timingFunction = timingFunction;
    
    CAAnimationGroup *animations = [CAAnimationGroup animation];
    [animations setDuration:1.5f];
    [animations setAnimations:@[headAnimation, tailAnimation, endHeadAnimation, endTailAnimation]];
    animations.repeatCount = INFINITY;
    [self.layer addAnimation:animations forKey:kACPStrokeAnimationKey];
    self.animate = YES;
    
}
- (void)stopAnimating{
    
    if (!self.isAnimating)
        return;
    
    [self.layer removeAnimationForKey:kACPRotationAnimationKey];
    [self.layer removeAnimationForKey:kACPStrokeAnimationKey];
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
