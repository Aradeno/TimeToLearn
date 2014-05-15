//
//  CoursesOverviewTableViewCell.m
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "CoursesOverviewTableViewCell.h"

@implementation CoursesOverviewTableViewCell

@synthesize courseTitle;
@synthesize courseImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
