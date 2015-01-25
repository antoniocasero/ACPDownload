//
//  ExampleCell.h
//  ACPDownload
//
//  Created by Antonio Casero Palmero on 18/01/15.
//  Copyright (c) 2015 Antonio Casero Palmero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACPDownloadView.h"

@interface ExampleCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *exampleLabel;
@property (weak, nonatomic) IBOutlet ACPDownloadView *exampleIndicator;


@end
