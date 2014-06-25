//
//  VideoScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "VideoScreen.h"

@interface VideoScreen ()

@end

@implementation VideoScreen

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
    CALayer *btnLayer = [_btnGaVerder layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    [super viewDidLoad];
    [self.videoTitel setAdjustsFontSizeToFitWidth:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.webView.scrollView.scrollEnabled = NO;
    for(Vraag* vraag in self.currentLes.vragen){
        if(vraag.beantwoord == NO){
            NSURL *urlVideo = [NSURL URLWithString:vraag.videoURL];
            NSURLRequest *request = [NSURLRequest requestWithURL:urlVideo];
            [self.webView loadRequest:request];
            self.videoTitel.text = vraag.videoTitel;
            return;
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    QuestionScreen *qs = (QuestionScreen*)[segue destinationViewController];
    qs.currentCursus = _currentCursus;
    qs.currentGebruiker = self.currentGebruiker;
    qs.currentLes = self.currentLes;
    
    for(Vraag* vraag in self.currentLes.vragen){
        if(vraag.beantwoord == NO){
            qs.currentVraag = vraag;
            break;
        }
    }
}


@end
