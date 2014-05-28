//
//  Gebruiker.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Gebruiker : NSObject <ObjectWithKeys>

@property NSString* userID;
@property NSString* gebruikersnaam;
@property NSString* wachtwoord;
@property NSInteger score;
@property NSMutableArray* cursussen;
@property NSMutableArray* berichten;
@property NSArray *keys;


- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;
- (void) addScore;

@end
