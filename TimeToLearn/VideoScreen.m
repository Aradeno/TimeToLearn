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
    NSLog(self.currentCursus.naamCursus);
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(self.currentCursus.naamCursus);
    for(Vraag* vraag in [[self.currentCursus.lessen objectAtIndex:0] vragen]){
        if(vraag.beantwoord == NO){
            NSLog(vraag.videoURL);
            NSURL *urlVideo = [NSURL URLWithString:vraag.videoURL];
            NSURLRequest *request = [NSURLRequest requestWithURL:urlVideo];
            [self.webView loadRequest:request];
            return;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
