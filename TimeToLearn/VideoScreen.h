//
//  VideoScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionScreen.h"
#import "Objects.h"


@interface VideoScreen : UIViewController

@property Cursus *currentCursus;
@property Gebruiker *currentGebruiker;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *btnGaVerder;
@property (weak, nonatomic) IBOutlet UILabel *videoTitel;
@property (weak, nonatomic) IBOutlet UITextView *videoBeschrijving;

@end
