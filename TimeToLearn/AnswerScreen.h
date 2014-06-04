//
//  AnswerScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface AnswerScreen : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbAntwoordCheck;
@property (weak, nonatomic) IBOutlet UILabel *lbSuggestie;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
@property (weak, nonatomic) IBOutlet UIButton *hoofdmenuBtn;

@property Vraag* currentVraag;
@property NSString *currentAnswer;

@end
