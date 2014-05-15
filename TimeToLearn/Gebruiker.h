//
//  Gebruiker.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gebruiker : NSObject

@property NSString* gebruikersnaam;
@property NSString* wachtwoord;
@property NSInteger score;
@property NSMutableArray* cursussen;
@property NSMutableArray* berichten;

-(void) addScore;

@end
