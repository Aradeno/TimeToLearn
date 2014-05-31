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
        self.keys = [NSArray arrayWithObjects:@"bericht_id", @"user_id", @"cursus_id", @"reactie_op_berichtid", @"bericht_title", @"bericht_text", @"datum_tijd", nil];
        self.reacties = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setKeyValues:(NSMutableArray*)values
{
    self.berichtId = [values objectAtIndex:0];
    self.userId = [values objectAtIndex:1];
    self.cursusId = [values objectAtIndex:2];
    self.reactieOpId = [values objectAtIndex:3];
    self.berichtTitel = [values objectAtIndex:4];
    self.berichtTekst = [values objectAtIndex:5];
    self.datumTijd = [values objectAtIndex:6];
}

- (NSArray*) getKeys
{
    return self.keys;
}


@end
