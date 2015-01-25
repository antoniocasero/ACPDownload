//
//  ACPLayerProtocol.h
//  ACPDownload
//
//  Created by Palmero, Antonio on 1/16/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 `ACPLayerProtocol`
 
 ##Purpose
 Protocol to define the animated layers in the view container. It is defined for two animated states, Indeterminate and Running.
 Any object who conform this protocol could replace any of the animated layer in the project. 
 @see ACPIndeterminateGoogleLayer ACPIndeterminateLayer
 
 #Optional methods.
 
 Indeterminate animation has to conform -startAnimating and -stopAnimating
 Progress animation has to conform -setProgress
 
 @see ACPDownloadConstants;
 */

@protocol ACPLayerProtocol <NSObject>

@property (nonatomic, readonly) CAShapeLayer * layer;
@property (nonatomic, readonly) UIColor * colorLayer;
@property (nonatomic, assign, readonly, getter= isAnimating) BOOL animate;

/**
 *  This method will set the right frame to layer
 *
 *  @param frame current frame.
 */
- (void)updateFrame:(CGRect)frame;

/**
 *  It will change the color of the layer. By default is tintColor.
 *
 *  @param color color
 */
- (void)updateColor:(UIColor*)color;

/**
 *  It will hidde the layer.
 *
 *  @param hidden YES is hidden
 */
- (void)setHidden:(BOOL)hidden;

/**
 *  Remove Layer, this method remove the animation first, and then remove the layer from superview
 */
- (void)removeLayer;

@optional

/**
 *  This method will start the animation associated.
 *  @warning the indeterminate layer has to implement it.
 */
- (void)startAnimating;

/**
*  This method will stop the animation associated.
*  @warning the indeterminate layer has to implement it.
*/
- (void)stopAnimating;

/**
 *  This method will define the progress of our Progress layer
 *  @warning the progress layer has to implement it.
 *  @param progress Float value from 0 to 1.
 *  @param animated flag.
 */
- (void)setProgress:(float)progress animated:(BOOL)animated;
@end
