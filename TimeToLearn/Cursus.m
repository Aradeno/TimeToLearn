//
//  Cursus.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Cursus.h"

@implementation Cursus

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"cursus_id", @"naam", @"identifier", @"image_url", nil];
        self.lessen = [[NSMutableArray alloc] init];
        self.berichten = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.cursusId = [values objectAtIndex:0];
    self.naamCursus = [values objectAtIndex:1];
    self.identifier = [values objectAtIndex:2];
    self.imgURL = [values objectAtIndex:3];
}

- (NSArray*) getKeys
{
    return self.keys;
}


@end
