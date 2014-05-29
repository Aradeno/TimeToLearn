//
//  TopNavigationController.m
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "TopNavigationController.h"

@interface TopNavigationController ()

@end

@implementation TopNavigationController

@synthesize gebruikers;
@synthesize cursussen;
@synthesize vragen;
@synthesize vraagOpties;
@synthesize berichten;

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
    gebruikers = [[NSMutableArray alloc] init];
    cursussen = [[NSMutableArray alloc ] init];
    vragen = [[NSMutableArray alloc] init];
    vraagOpties = [[NSMutableArray alloc] init];
    berichten = [[NSMutableArray alloc] init];
}

- (void)addToList:(id<ObjectWithKeys>)objWithKeys
{
    if([objWithKeys isKindOfClass:[Gebruiker class]])
        [gebruikers addObject:(Gebruiker*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Cursus class]])
        [cursussen addObject:(Cursus*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Vraag class]])
        [vragen addObject:(Vraag*)objWithKeys];
    else if([objWithKeys isKindOfClass:[VraagOptie class]])
        [vraagOpties addObject:(VraagOptie*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Bericht class]])
        [berichten addObject:(Bericht*)objWithKeys];
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
