//
//  MagazineScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionScreen.h"
#import "Objects.h"

@interface MagazineScreen : UIViewController

@property Cursus *currentCursus;
@property Gebruiker *currentGebruiker;
@property (weak, nonatomic) IBOutlet UILabel *magazineTitel;
@property (weak, nonatomic) IBOutlet UITextView *magazineTekst;
@property (weak, nonatomic) IBOutlet UIImageView *magazineImage;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;

@end
