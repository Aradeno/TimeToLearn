//
//  QuestionScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnswerScreen.h"
#import "Objects.h"

@interface QuestionScreen : UIViewController
@property (strong, nonatomic) IBOutlet UIView *infographic;
@property (weak, nonatomic) IBOutlet UILabel *titelVraag;
@property (weak, nonatomic) IBOutlet UILabel *subtitelVraag;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
@property (weak, nonatomic) IBOutlet UIButton *buttonA;
@property (weak, nonatomic) IBOutlet UILabel *textButtonA;
@property (weak, nonatomic) IBOutlet UIButton *buttonB;
@property (weak, nonatomic) IBOutlet UILabel *textButtonB;
@property (weak, nonatomic) IBOutlet UIButton *buttonC;
@property (weak, nonatomic) IBOutlet UILabel *textButtonC;
@property (weak, nonatomic) IBOutlet UILabel *tekstVraag;

@property Cursus *currentCursus;
@property Vraag* currentVraag;

@end
