//
//  Bericht.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Bericht : NSObject <ObjectWithKeys>

@property NSString* berichtId;
@property NSString* userId;
@property NSString* cursusId;
@property NSString* reactieOpId;
@property NSString* berichtTitel;
@property NSString* berichtTekst;
@property NSString* datumTijd;
@property NSMutableArray* reacties;
@property NSArray *keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
