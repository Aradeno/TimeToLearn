//
//  QuizzesOverviewTableViewCell.h
//  TimeToLearn
//
//  Created by admin on 6/5/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizzesOverviewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *tekstLes;
@property (weak, nonatomic) IBOutlet UIProgressView *progressbar;

@end
