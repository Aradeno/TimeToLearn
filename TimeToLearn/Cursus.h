//
//  Cursus.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Cursus : NSObject <ObjectWithKeys>

@property NSString* cursusId;
@property NSString* naamCursus;
@property NSMutableArray* lessen;
@property NSString* identifier;
@property NSString* imgURL;
@property NSMutableArray* berichten;
@property NSArray *keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
