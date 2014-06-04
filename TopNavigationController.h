//
//  TopNavigationController.h
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface TopNavigationController : UINavigationController

@property NSMutableArray* gebruikers;
@property NSMutableArray* cursussen;
@property NSMutableArray* cursusVolgers;
@property NSMutableArray* lessen;
@property NSMutableArray* vragen;
@property NSMutableArray* berichten;

- (void)addToList:(id <ObjectWithKeys>) objWithKeys;

- (Gebruiker*)findGebruiker:(NSString*)userId;
- (Gebruiker*)findGebruikerByName:(NSString*)gebruikersnaam;
- (Cursus*)findCursus:(NSString*)cursusId;
- (CursusVolger*)findCursusVolger:(NSString*)cursusVolgerId;
- (Les*)findLes:(NSString*)lesId;
- (Vraag*)findVraag:(NSString*)vraagId;
- (Bericht*)findBericht:(NSString*)berichtId;

- (void)rearrangeObjects;

@end
