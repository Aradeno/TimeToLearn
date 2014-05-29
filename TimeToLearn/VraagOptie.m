//
//  VraagOptie.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "VraagOptie.h"

@implementation VraagOptie

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"vraagopties_id", @"vraag_id", @"antwoord", @"optie1", @"optie2", @"optie3", nil];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self. = [values objectAtIndex:0];
    self.naamCursus = [values objectAtIndex:1];
    self.identifier = [values objectAtIndex:2];
    self.imgURL = [values objectAtIndex:3];
}

- (NSArray*) getKeys
{
    return self.keys;
}

@end
