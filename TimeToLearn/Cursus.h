//
//  Cursus.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Cursus : NSObject
@property NSString* cursusId;
@property NSString* naamCursus;
@property NSMutableArray* vragen;
@property NSString* identifier;
@property NSString* imgURL;
@property NSArray *keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
