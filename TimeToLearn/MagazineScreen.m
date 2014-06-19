//
//  MagazineScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "MagazineScreen.h"

@interface MagazineScreen ()

@end

@implementation MagazineScreen
@synthesize currentCursus;
@synthesize currentGebruiker;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    Les *nsasd = [self.currentCursus.lessen objectAtIndex:0];
    for(Vraag* vraag in nsasd.vragen){
        if(vraag.beantwoord == NO){
            self.magazineTitel.text = vraag.magazineTitel;
            self.magazineTekst.text =vraag.magazineText;
            return;
        }
    }
    
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
