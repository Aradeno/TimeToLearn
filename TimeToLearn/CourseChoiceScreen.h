//
//  CourseChoiceScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"
#import "MagazineScreen.h"
#import "VideoScreen.h"

@interface CourseChoiceScreen : UIViewController

@property Cursus *currentCursus;

@property (weak, nonatomic) IBOutlet UIButton *videoBtn;
@property (weak, nonatomic) IBOutlet UIButton *magazineBtn;

@end
