//
//  Gebruiker.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Gebruiker.h"

@implementation Gebruiker

- (void)addScore
{
    self.score++;
    
}

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"user_id", @"naam", @"wachtwoord", @"score",nil];
        self.cursussen = [[NSMutableArray alloc] init];
        self.berichten = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
        self.userId = [values objectAtIndex:0];
        self.gebruikersnaam = [values objectAtIndex:1];
        self.wachtwoord = [values objectAtIndex:2];
        self.score = [[values objectAtIndex:3] integerValue];
}

- (NSArray*) getKeys
{
    return self.keys;
}

@end
