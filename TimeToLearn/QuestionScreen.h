//
//  QuestionScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionScreen : UIViewController
@property (strong, nonatomic) IBOutlet UIView *infogrpahic;
@property (weak, nonatomic) IBOutlet UILabel *titelVraag;
@property (weak, nonatomic) IBOutlet UILabel *subtitelVraag;
@property (weak, nonatomic) IBOutlet UILabel *vraag;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

@end
