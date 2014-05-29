//
//  Vraag.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Vraag.h"

@implementation Vraag

- (id) init
{
    if(self == [super init]) {
        self.keys = [NSArray arrayWithObjects:@"vraag_id", @"cursus_id", @"titel", @"video_titel", @"video_url", @"magazine_titel", @"magazine1", @"magazine2", @"magazine3", @"quizvraag", nil];
        self.magazines = [[NSMutableArray alloc] init];
        self.vraagOpties = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.vraagId = [values objectAtIndex:0];
    self.cursusId = [values objectAtIndex:1];
    self.titel = [values objectAtIndex:2];
    self.videoTitel = [values objectAtIndex:3];
    self.videoURL = [values objectAtIndex:4];
    self.magazineTitel = [values objectAtIndex:5];
    [self.magazines addObject:[values objectAtIndex:6]];
    [self.magazines addObject:[values objectAtIndex:7]];
    [self.magazines addObject:[values objectAtIndex:8]];
    self.quizvraag = [values objectAtIndex:9];
}

- (NSArray *)getKeys
{
    return self.keys;
}

@end
