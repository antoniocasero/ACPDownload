//
//  ViewController.m
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 10/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import "ViewController.h"
#import "ACPDownloadView.h"
#import "ACPIndeterminateGoogleLayer.h"
#import "ExampleCell.h"
#import "ACPStaticImagesAlternative.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    NSTimer *_timer;
}
@property (weak, nonatomic) IBOutlet ACPDownloadView *downloadView;
@property (nonatomic, assign) float progress;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // If you want to change the animation in the indeterminate state
    ACPIndeterminateGoogleLayer * layer = [ACPIndeterminateGoogleLayer new];
    [layer updateColor:[UIColor blueColor]];
    [self.downloadView setIndeterminateLayer:layer];
    
    // You can define a behaviour if the view is tapped. (Optional)
    [self.downloadView setActionForTap:^(ACPDownloadView *downloadView, ACPDownloadStatus status){
        switch (status) {
            case ACPDownloadStatusNone:
                [downloadView setIndicatorStatus:ACPDownloadStatusIndeterminate];
                break;
            case ACPDownloadStatusRunning:
                [downloadView setIndicatorStatus:ACPDownloadStatusCompleted];
                break;
            case ACPDownloadStatusIndeterminate:
                [downloadView setIndicatorStatus:ACPDownloadStatusRunning];
                break;
            case ACPDownloadStatusCompleted:
                [downloadView setIndicatorStatus:ACPDownloadStatusNone];
                break;
                
            default:
                break;
        }
    }];
    // This timer has been written just for testing purposes. It's running and changing the value of the progress variable constantly.
    _timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(increment:) userInfo:nil repeats:YES];
}

- (void)increment:(NSTimer *)timer {

     self.progress = (self.progress <= 0.8f ? self.progress + 0.2f : 0.0f);
    NSLog(@"Progress %f", self.progress);
    [self.downloadView setProgress:self.progress animated:YES];
}

#pragma mark - Tableview configuration.

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 25;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"Cell";
    ExampleCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    cell.exampleLabel.text = [NSString stringWithFormat:@"Package %zd", indexPath.row];

    // If you want to change the images presented
    ACPStaticImagesAlternative * myOwnImages = [ACPStaticImagesAlternative new];
    [myOwnImages updateColor:cell.tintColor];
    [cell.exampleIndicator setImages:myOwnImages];
    
    //Status by default.
    [cell.exampleIndicator setIndicatorStatus:ACPDownloadStatusNone];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ExampleCell * cellSelected = (ExampleCell*)[tableView cellForRowAtIndexPath:indexPath];
    
    switch (cellSelected.exampleIndicator.currentStatus
            ) {
        case ACPDownloadStatusNone:
            [cellSelected.exampleIndicator setIndicatorStatus:ACPDownloadStatusIndeterminate];
            break;
        case ACPDownloadStatusRunning:
            [cellSelected.exampleIndicator setIndicatorStatus:ACPDownloadStatusCompleted];
            break;
        case ACPDownloadStatusIndeterminate:
            [cellSelected.exampleIndicator setIndicatorStatus:ACPDownloadStatusRunning];
            [cellSelected.exampleIndicator setProgress:self.progress animated:YES];
            break;
        case ACPDownloadStatusCompleted:
            [cellSelected.exampleIndicator setIndicatorStatus:ACPDownloadStatusNone];
            break;
            
        default:
            break;
    }

    
}

@end
