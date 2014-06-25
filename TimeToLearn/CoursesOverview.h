//
//  CoursesOverview.h
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"
#import "CoursesOverviewTableViewCell.h"
#import "CourseInformationScreen.h"

@interface CoursesOverview : UITableViewController

@property Gebruiker* currentGebruiker;
@property NSMutableArray *gebruikers;

@end
