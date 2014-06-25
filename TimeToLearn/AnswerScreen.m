//
//  AnswerScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "AnswerScreen.h"

@interface AnswerScreen ()

@end

@implementation AnswerScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CALayer *btnLayer = [_nextBtn layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    
    CALayer *btnLayer2 = [_hoofdmenuBtn layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    
    [self.lbAntwoordCheck setAdjustsFontSizeToFitWidth:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    if([self.currentAnswer isEqualToString:self.currentVraag.antwoord]){
        self.lbAntwoordCheck.text = @"Het antwoord is juist!";
        self.lbSuggestie.text = @"U kunt doorgaan naar de volgende vraag of teruggaan naar het menu.";
        self.currentVraag.beantwoord = YES;
        self.navigationItem.hidesBackButton = YES;
        self.nextBtn.hidden = NO;
    } else {
        if(self.currentAnswer.length == 0){
            self.lbAntwoordCheck.text = @"U heeft geen antwoord gekozen.";
            self.lbSuggestie.text = @"Ga terug naar het vorige scherm om een antwoord te kiezen.";
            self.navigationItem.hidesBackButton = NO;
            self.nextBtn.hidden = YES;
        } else {
            self.lbAntwoordCheck.text = @"Het antwoord is onjuist";
            self.lbSuggestie.text = @"Neem de lesstof nog een keer door.";
            self.navigationItem.hidesBackButton = YES;
            self.nextBtn.hidden = NO;
        }
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue destinationViewController] isKindOfClass:[CourseChoiceScreen class]]){
        CourseChoiceScreen *ccs = (CourseChoiceScreen*)[segue destinationViewController];
        ccs.currentGebruiker = self.currentGebruiker;
        ccs.currentCursus = self.currentCursus;
    } else {
        CoursesOverview *cov = (CoursesOverview*)[segue destinationViewController];
        cov.currentGebruiker = self.currentGebruiker;
    }
}


@end
