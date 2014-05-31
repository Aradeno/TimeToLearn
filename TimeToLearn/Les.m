//
//  Les.m
//  TimeToLearn
//
//  Created by admin on 5/30/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Les.h"

@implementation Les

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"les_id", @"cursus_id", @"titel", @"omschrijving", nil];
        self.vragen = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.lesId = [values objectAtIndex:0];
    self.cursusId = [values objectAtIndex:1];
    self.titel = [values objectAtIndex:2];
    self.omschrijving = [values objectAtIndex:3];
}

- (NSArray*) getKeys
{
    return self.keys;
}

@end
