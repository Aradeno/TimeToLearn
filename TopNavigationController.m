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
    self.gebruikers = [[NSMutableArray alloc] init];
    self.cursussen = [[NSMutableArray alloc ] init];
    self.cursusVolgers = [[NSMutableArray alloc] init];
    self.lessen = [[NSMutableArray alloc] init];
    self.vragen = [[NSMutableArray alloc] init];
    self.berichten = [[NSMutableArray alloc] init];
}

- (void)addToList:(id<ObjectWithKeys>)objWithKeys
{
    if([objWithKeys isKindOfClass:[Gebruiker class]])
        [self.gebruikers addObject:(Gebruiker*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Cursus class]])
        [self.cursussen addObject:(Cursus*)objWithKeys];
    else if([objWithKeys isKindOfClass:[CursusVolger class]])
        [self.cursusVolgers addObject:(CursusVolger*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Les class]])
        [self.lessen addObject:(Les*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Vraag class]])
        [self.vragen addObject:(Vraag*)objWithKeys];
    else if([objWithKeys isKindOfClass:[Bericht class]])
        [self.berichten addObject:(Bericht*)objWithKeys];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Gebruiker*)findGebruiker:(NSString*)userId
{
    for(Gebruiker* gebruiker in self.gebruikers){
        if([userId isEqualToString:gebruiker.userId])
            return gebruiker;
    }
    
    return nil;
}

- (Gebruiker*)findGebruikerByName:(NSString*)gebruikersnaam
{
    for(Gebruiker* gebruiker in self.gebruikers){
        if([gebruikersnaam isEqualToString:gebruiker.gebruikersnaam])
            return gebruiker;
    }
    
    return nil;
}

- (Cursus*)findCursus:(NSString*)cursusId
{
    for(Cursus* cursus in self.cursussen){
        if([cursusId isEqualToString:cursus.cursusId])
            return cursus;
    }
    
    return nil;
}

- (CursusVolger*)findCursusVolger:(NSString*)cursusVolgerId
{
    for(CursusVolger* cursusVolger in self.cursusVolgers){
        if([cursusVolgerId isEqualToString:cursusVolger.cursusVolgerId])
            return cursusVolger;
    }
    
    return nil;
}

- (Les*)findLes:(NSString*)lesId
{
    for(Les* les in self.lessen){
        if([lesId isEqualToString:les.lesId])
            return les;
    }
    
    return nil;
}

- (Vraag*)findVraag:(NSString*)vraagId
{
    for(Vraag* vraag in self.vragen){
        if([vraagId isEqualToString:vraag.vraagId])
            return vraag;
    }
    
    return nil;
}

- (Bericht*)findBericht:(NSString*)berichtId
{
    for(Bericht* bericht in self.berichten){
        if([berichtId isEqualToString:bericht.berichtId])
            return bericht;
    }
    
    return nil;
}

- (void)rearrangeObjects
{
    for(Bericht* bericht in self.berichten){
        if([bericht.reactieOpId length] > 0){
            [[self findBericht:bericht.reactieOpId].reacties addObject:bericht];
            NSLog(@"Added bericht:%@ to bericht:%@", bericht.berichtId, bericht.reactieOpId);
        } else {
            [[self findCursus:bericht.cursusId].berichten addObject:bericht];
            NSLog(@"Added bericht:%@ to cursu:%@", bericht.berichtId, bericht.cursusId);
        }
        
        [[self findGebruiker:bericht.userId].berichten addObject:bericht];
        NSLog(@"Added bericht:%@ to user:%@", bericht.berichtId, bericht.userId);
    }
    
    for(Vraag* vraag in self.vragen){
        [[self findLes:vraag.lesId].vragen addObject:vraag];
        NSLog(@"Added vraag:%@ to les:%@", vraag.vraagId, vraag.lesId);
    }
    
    for(Les* les in self.lessen){
        [[self findCursus:les.cursusId].lessen addObject:les];
        NSLog(@"Added les:%@ to cursus:%@", les.lesId, les.cursusId);
    }
    
    for(CursusVolger* cursusVolger in self.cursusVolgers){
        Gebruiker* gebruiker = [self findGebruiker:cursusVolger.userId];
        [gebruiker.cursussen addObject:[self findCursus:cursusVolger.cursusId]];
        NSLog(@"Added cursus:%@ to gebruiker:%@", cursusVolger.cursusId, gebruiker.userId);
    }
    
    [self sortBerichten];
    
}

- (void)sortBerichten
{
    NSSortDescriptor *sortCursusDescriptor = [[NSSortDescriptor alloc] initWithKey:@"cursusId" ascending:YES];
    NSSortDescriptor *sortBerichtDescriptor = [[NSSortDescriptor alloc] initWithKey:@"berichtId" ascending:YES];
    NSSortDescriptor *sortLesDescriptor = [[NSSortDescriptor alloc] initWithKey:@"lesId" ascending:YES];
    NSSortDescriptor *sortVraagDescriptor = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:YES];
    
    [self.cursussen sortUsingDescriptors:[NSArray arrayWithObject:sortCursusDescriptor]];
    [self.berichten sortUsingDescriptors:[NSArray arrayWithObject:sortBerichtDescriptor]];
    
    for(Gebruiker* gebruiker in self.gebruikers){
        [gebruiker.cursussen sortUsingDescriptors:[NSArray arrayWithObject:sortCursusDescriptor]];
        [gebruiker.berichten sortUsingDescriptors:[NSArray arrayWithObject:sortBerichtDescriptor]];
        for(Cursus* cursus in gebruiker.cursussen){
            [cursus.lessen sortUsingDescriptors:[NSArray arrayWithObject:sortLesDescriptor]];
            for(Les* les in cursus.lessen){
                [les.vragen sortUsingDescriptors:[NSArray arrayWithObject:sortVraagDescriptor]];
            }
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
