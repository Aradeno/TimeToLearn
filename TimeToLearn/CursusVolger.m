//
//  CursusVolger.m
//  TimeToLearn
//
//  Created by admin on 5/30/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "CursusVolger.h"

@implementation CursusVolger

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"cursusvolger_id", @"user_id", @"cursus_id", nil];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.cursusVolgerId = [values objectAtIndex:0];
    self.userId = [values objectAtIndex:1];
    self.cursusId = [values objectAtIndex:2];
}

- (NSArray*) getKeys
{
    return self.keys;
}

@end
