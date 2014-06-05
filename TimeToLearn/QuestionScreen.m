//
//  QuestionScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "QuestionScreen.h"


@interface QuestionScreen ()

@end

@implementation QuestionScreen

UIColor *originalButtonColor;

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
    
    originalButtonColor = self.buttonA.backgroundColor;
    
    [self.buttonA.layer setMasksToBounds:YES];
    [self.buttonA.layer setCornerRadius:5.0f];
    
    [self.buttonB.layer setMasksToBounds:YES];
    [self.buttonB.layer setCornerRadius:5.0f];
    
    [self.buttonC.layer setMasksToBounds:YES];
    [self.buttonC.layer setCornerRadius:5.0f];
    
    [self.textButtonA setAdjustsFontSizeToFitWidth:YES];
    [self.textButtonB setAdjustsFontSizeToFitWidth:YES];
    [self.textButtonC setAdjustsFontSizeToFitWidth:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.titelVraag.text = [NSString stringWithFormat:@"Vraag %i", self.currentVraag.index +1];
    self.tekstVraag.text = self.currentVraag.quizvraag;
    self.textButtonA.text = [self.currentVraag.opties objectAtIndex:0];
    self.textButtonB.text = [self.currentVraag.opties objectAtIndex:1];
    self.textButtonC.text = [self.currentVraag.opties objectAtIndex:2];
}

- (IBAction)btnA:(id)sender {
    self.buttonA.backgroundColor = [UIColor greenColor];
    self.buttonB.backgroundColor = originalButtonColor;
    self.buttonC.backgroundColor = originalButtonColor;
}
- (IBAction)btnB:(id)sender {
    self.buttonA.backgroundColor = originalButtonColor;
    self.buttonB.backgroundColor = [UIColor greenColor];
    self.buttonC.backgroundColor = originalButtonColor;
}
- (IBAction)btnC:(id)sender {
    self.buttonA.backgroundColor = originalButtonColor;
    self.buttonB.backgroundColor = originalButtonColor;
    self.buttonC.backgroundColor = [UIColor greenColor];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    AnswerScreen* as = (AnswerScreen*)[segue destinationViewController];
    as.currentVraag = self.currentVraag;
    as.currentGebruiker = self.currentGebruiker;
    as.currentCursus = self.currentCursus;
    as.currentAnswer = @"";
    
    if(self.buttonA.backgroundColor == [UIColor greenColor]){
        as.currentAnswer = self.textButtonA.text;
    } else {
        if(self.buttonB.backgroundColor == [UIColor greenColor]){
            as.currentAnswer = self.textButtonB.text;
        } else {
            if(self.buttonC.backgroundColor == [UIColor greenColor]){
                as.currentAnswer = self.textButtonC.text;
            }
        }
    }
}


@end
