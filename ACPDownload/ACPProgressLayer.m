//
//  ACPProgressLayer.m
//  ACPDownload
//
//  Created by Palmero, Antonio on 1/16/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPProgressLayer.h"
#import "ACPDownloadConstants.h"

@interface ACPProgressLayer()

@property (nonatomic, readwrite) CAShapeLayer * layer;
@property (nonatomic, readwrite) UIColor * colorLayer;
@property (nonatomic, assign) CGRect frame;
@property (nonatomic, assign, readwrite, getter= isAnimating) BOOL animate;
@property (nonatomic, assign) float progress;

@end

@implementation ACPProgressLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        _progress =0.f;
    }
    return self;
}
- (CAShapeLayer *) layer {
    if (!_layer) {
        _layer = [CAShapeLayer layer];
        _layer.strokeColor = self.colorLayer.CGColor;
        _layer.fillColor = nil;
        _layer.lineWidth = 3.f;
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
    radius = radius - self.layer.lineWidth/2;
    CGFloat startAngle = (CGFloat)(-M_PI/2);
    CGFloat endAngle = (CGFloat)(3 * M_PI_2);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    self.layer.path = path.CGPath;

}

#pragma mark -

- (void)setProgress:(float)progress {
    [self setProgress:progress animated:NO];
}

- (void)setProgress:(float)progress animated:(BOOL)animated {
    if (progress > 0) {
        if (animated) {
            CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
            animation.fromValue = self.progress == 0 ? @0 : nil;
            animation.toValue = @(progress);
            animation.duration = 1;
            self.layer.strokeEnd = progress;
            [self.layer addAnimation:animation forKey:@"animation"];
        } else {
            [CATransaction begin];
            [CATransaction setDisableActions:YES];
            self.layer.strokeEnd = progress;
            [CATransaction commit];
        }
    } else {
        self.layer.strokeEnd = 0.0f;
        [self.layer removeAnimationForKey:@"animation"];
    }
    
    _progress = progress;
}

- (void)updateColor:(UIColor*)color {
    self.layer.strokeColor = color.CGColor;
}

- (void)setHidden:(BOOL)hidden {
    self.layer.hidden = YES;

}
- (void)removeLayer {
    [self.layer removeFromSuperlayer];
}
@end
