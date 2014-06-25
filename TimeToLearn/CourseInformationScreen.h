//
//  CourseInformationScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"
#import "CourseInformationScreenTableViewCell.h"
#import "CourseChoiceScreen.h"
#import "QuizzesOverview.h"
#import "DiscussionsOverview.h"
#import "RankingOverview.h"

@interface CourseInformationScreen : UITableViewController

@property Cursus* currentCursus;
@property Gebruiker* currentGebruiker;

@end
