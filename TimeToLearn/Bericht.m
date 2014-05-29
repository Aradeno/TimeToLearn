//
//  Bericht.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Bericht.h"

@implementation Bericht

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"bericht_id", @"user_id", @"bericht_title", @"bericht_text", nil];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.berichtId = [values objectAtIndex:0];
    self.userId = [values objectAtIndex:1];
    self.berichtTitel = [values objectAtIndex:2];
    self.berichtTekst = [values objectAtIndex:3];
}

- (NSArray*) getKeys
{
    return self.keys;
}


@end
