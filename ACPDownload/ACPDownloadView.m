 //
//  ACPDownloadView.m
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 10/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ACPDownloadView.h"
#import "ACPIndeterminateLayer.h"
#import "ACPProgressLayer.h"
#import "ACPStaticImages.h"


@interface ACPDownloadView()

@property (nonatomic, readwrite, assign) ACPDownloadStatus currentStatus;
@property (nonatomic, copy) ACPViewTappedBlock viewTappedBlock;
@property (nonatomic, strong) id<ACPStaticImagesProtocol> staticImages;
@property (nonatomic, strong) id<ACPLayerProtocol> indeterminateShapelayer;
@property (nonatomic, strong) id<ACPLayerProtocol> progressShapelayer;


@end

@implementation ACPDownloadView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

- (void)initialize {

    [self setIndicatorStatus:ACPDownloadStatusNone];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resetAnimations) name:UIApplicationDidBecomeActiveNotification object:nil];
    
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [self addGestureRecognizer:singleFingerTap];
    
}
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    NSLog(@"Tap recieved");
    if(self.viewTappedBlock){
        self.viewTappedBlock(self, self.currentStatus);
    }
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
}
- (void)layoutSubviews {
    //We set the bounds
    [super layoutSubviews];
    if(!self.staticImages){
        self.staticImages = [ACPStaticImages new];
        [self.staticImages updateColor:self.tintColor];
    }
    
    [self.staticImages updateFrame:self.bounds];

}

- (void)setIndicatorStatus:(ACPDownloadStatus)newStatus {
    self.currentStatus = newStatus;
    [self setNeedsDisplay];
}

- (void)resetAnimations {

    if (self.indeterminateLayer.isAnimating) {
        [self.indeterminateLayer stopAnimating];
        [self.indeterminateLayer startAnimating];
    }
}

- (void)setProgress:(float)progress animated:(BOOL)animated {
    [self.progressShapelayer setProgress:progress animated:animated];

}
- (void)drawRect:(CGRect)rect {
    
    [self.indeterminateShapelayer removeLayer];
    [self.progressShapelayer removeLayer];
    switch (self.currentStatus) {
        case ACPDownloadStatusNone:{
            [self.staticImages drawStatusNone];
            break;
        }
        case ACPDownloadStatusRunning:{
        
            [self initializeProgress];
            [self.staticImages drawStatusRunning];
            break;
        }
        case ACPDownloadStatusIndeterminate:{
            
            [self initializeIndeterminate];
            [self.indeterminateLayer startAnimating];
            [self.staticImages drawStatusIndeterminate];
            //Nothing
            break;
        }
        case ACPDownloadStatusCompleted:{
            [self.staticImages drawStatusComplete];
            break;
        }
        default:
            break;
    }
    [self setNeedsDisplay];

}

- (id<ACPLayerProtocol>)progressShapelayer {
    if (!_progressShapelayer) {
        _progressShapelayer = [ACPProgressLayer new];
    }
    return _progressShapelayer;
}
- (id<ACPLayerProtocol>)indeterminateLayer {
    
    if (!_indeterminateShapelayer) {
        _indeterminateShapelayer = [ACPIndeterminateLayer new];
    }
    return _indeterminateShapelayer;
}

- (void)tintColorDidChange {
    [super tintColorDidChange];
    [self.indeterminateLayer updateColor:self.tintColor];
    [self.progressShapelayer updateColor:self.tintColor];
    [self.staticImages updateColor:self.tintColor];
}



- (void)setActionForTap:(ACPViewTappedBlock)blockAction {
    self.viewTappedBlock = blockAction;
}

- (void)setIndeterminateLayer:(id<ACPLayerProtocol>)layer {
    [layer updateFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
    _indeterminateShapelayer = layer;
    
}
- (void)setProgressLayer:(id<ACPLayerProtocol>)layer {
    [layer updateFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
    _progressShapelayer = layer;
    
}

- (void)initializeIndeterminate {
    [self.indeterminateLayer updateColor:self.tintColor];
    [self.layer addSublayer:self.indeterminateLayer.layer];
    [self.indeterminateShapelayer updateFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
}

- (void)initializeProgress{
    [self.progressShapelayer updateColor:self.tintColor];
    [self.layer addSublayer:self.progressShapelayer.layer];
    [self.progressShapelayer updateFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
}

- (void)setImages:(id<ACPStaticImagesProtocol>)images{
    self.staticImages = images;
    [self.staticImages updateFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
}
@end
