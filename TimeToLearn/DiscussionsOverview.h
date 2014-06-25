//
//  DiscussionsOverview.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"
#import "DiscussionScreen.h"
#import "DiscussionsOverviewTableViewCell.h"

@interface DiscussionsOverview : UITableViewController

@property Cursus *currentCursus;
@property Gebruiker *currentGebruiker;

@end
