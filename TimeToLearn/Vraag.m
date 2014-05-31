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
        self.keys = [NSArray arrayWithObjects:@"vraag_id", @"les_id",@"index", @"video_url", @"video_titel", @"magazine_titel", @"magazine1", @"magazine2", @"magazine3", @"quizvraag", @"antwoord", @"optie1", @"optie2", @"optie3", nil];
        self.magazines = [[NSMutableArray alloc] init];
        self.opties = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.vraagId = [values objectAtIndex:0];
    self.lesId = [values objectAtIndex:1];
    self.index = [[values objectAtIndex:2] integerValue];
    self.videoURL = [values objectAtIndex:3];
    self.videoTitel = [values objectAtIndex:4];
    self.magazineTitel = [values objectAtIndex:5];
    [self.magazines addObject:[values objectAtIndex:6]];
    [self.magazines addObject:[values objectAtIndex:7]];
    [self.magazines addObject:[values objectAtIndex:8]];
    self.quizvraag = [values objectAtIndex:9];
    self.antwoord = [values objectAtIndex:10];
    [self.opties addObject:[values objectAtIndex:11]];
    [self.opties addObject:[values objectAtIndex:12]];
    [self.opties addObject:[values objectAtIndex:13]];
    
}

- (NSArray *)getKeys
{
    return self.keys;
}

@end
