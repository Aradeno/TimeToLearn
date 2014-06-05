//
//  DiscussionsOverviewTableViewCell.h
//  TimeToLearn
//
//  Created by admin on 6/5/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface DiscussionsOverviewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *berichtTitel;
@property (weak, nonatomic) IBOutlet UILabel *datumTijd;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
