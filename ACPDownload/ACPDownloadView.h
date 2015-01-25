//
//  ACPDownloadView.h
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 10/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACPLayerProtocol.h"
#import "ACPStaticImagesProtocol.h"
#import "ACPDownloadConstants.h"

@class ACPDownloadView;

typedef void (^ACPViewTappedBlock)(ACPDownloadView * downloadView, ACPDownloadStatus status);

/**
 `ACPDownloadView`
 
 ##Purpose
 Custom view. Provides a graphic representation of 4 different states.
 *ACPDownloadStatusNone -> Initial state, nothing has been downloaded.
 *ACPDownloadStatusRunning -> The download or process is in progress.
 *ACPDownloadStatusIndeterminate -> Indeterminate state. (waiting, installing,...)
 *ACPDownloadStatusCompleted -> Final state, the process is completed.
 
 
 @see ACPDownloadConstants;
 */
@interface ACPDownloadView : UIView

@property (nonatomic, readonly, assign) ACPDownloadStatus currentStatus;

/**
 *  This method defines the state of the download indicator.
 *
 *  @param newStatus current state of your process
 */
- (void)setIndicatorStatus:(ACPDownloadStatus)newStatus;

/**
 *  Defines the progression of your process.
 *  @warning you can set the value when you want. But if the view state is not ACPDownloadStatusRunning you won't see
 *  the graphical representation. 
 
 *  @param progress Float value - from 0 to 1
 *  @param animated Animation flag.
 */
- (void)setProgress:(float)progress animated:(BOOL)animated;

/**
 *  Defines the behaviour when the user tap over it. 
 *  The implementation is optional.
 *
 *  @param blockAction The block input provides the view object and the current state.
 */
- (void)setActionForTap:(ACPViewTappedBlock)blockAction;

/**
 *  Define a new indeterminate layer, replacing the default one.
 *  @see ACPLayerProtocol, ACPIndeterminateLayer
 *  @param layer Object who conforms the protocol ACPLayerProtocol.
 */
- (void)setIndeterminateLayer:(id<ACPLayerProtocol>)layer;

/**
 *  Define a new progress layer, replacing the default one.
 *  @see ACPLayerProtocol, ACPProgressLater
 *  @param layer Object who conforms the protocol ACPLayerProtocol.
 */
- (void)setProgressLayer:(id<ACPLayerProtocol>)layer;

/**
 *  Define a new set of images, replacing the default one.
 *  @see ACPStaticImagesProtocol
 *  @param layer Object who conforms the protocol ACPStaticImagesProtocol.
 */
- (void)setImages:(id<ACPStaticImagesProtocol>)images;
@end
