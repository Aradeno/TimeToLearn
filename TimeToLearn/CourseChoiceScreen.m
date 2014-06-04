//
//  CourseChoiceScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "CourseChoiceScreen.h"

@interface CourseChoiceScreen ()

@end

@implementation CourseChoiceScreen

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
    CALayer *btnLayer = [_videoBtn layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    CALayer *btnLayer2 = [_magazineBtn layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnMagazine:(id)sender
{
    [self performSegueWithIdentifier:@"pushToMagazineScreen" sender:self];
}

- (IBAction)btnVideo:(id)sender
{
    [self performSegueWithIdentifier:@"pushToVideoScreen" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue destinationViewController] isKindOfClass: [MagazineScreen class]]){
        MagazineScreen *mags = (MagazineScreen*)[segue destinationViewController];
        mags.currentCursus = self.currentCursus;
    } else {
        VideoScreen *vids = (VideoScreen*)[segue destinationViewController];
        vids.currentCursus = self.currentCursus;
    }
}

@end
