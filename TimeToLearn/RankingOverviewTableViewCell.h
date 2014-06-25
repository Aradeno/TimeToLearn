//
//  RankingOverviewTableViewCell.h
//  TimeToLearn
//
//  Created by admin on 6/25/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankingOverviewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelRanking;
@property (weak, nonatomic) IBOutlet UIImageView *imageProfile;
@property (weak, nonatomic) IBOutlet UILabel *labelProfileName;
@property (weak, nonatomic) IBOutlet UILabel *labelScore;

@end
