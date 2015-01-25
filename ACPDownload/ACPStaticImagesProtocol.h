//
//  ACPStaticImages.h
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 18/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 `ACPStaticImagesProtocol`
 
 ##Purpose
 Protocol to define the set of static images for any state in the main view. 
 @see ACPStaticImagesAlternative ACPStaticImages
 
 ##Note
 No need for different resolutions, UIBezierPath is used to paint the images.
 
 @see UIBezierPath;
 */

@protocol ACPStaticImagesProtocol<NSObject>
/**
 *  Basic properties.
 */
@property (nonatomic, assign) CGRect bounds;
@property (nonatomic, strong) UIColor * strokeColor;

/**
 *  Draw the image for the ACPDownloadStatusNone
 */
- (void) drawStatusNone;

/**
 *  Draw the image for the ACPDownloadStatusIndeterminate
 */
- (void) drawStatusIndeterminate;

/**
 *  Draw the image for the ACPDownloadStatusRunning
 */
- (void) drawStatusRunning;

/**
 *  Draw the image for the ACPDownloadStatusCompleted
 */
- (void) drawStatusComplete;

/**
 *  Update the color of the images. By default is the tintColor.
 *
 *  @param color Color selected.
 */
- (void) updateColor:(UIColor*)color;

/**
*  This method will set the right frame to layer
*
*  @param frame current frame.
*/
- (void)updateFrame:(CGRect)frame;
@end
