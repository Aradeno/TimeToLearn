//
//  Les.h
//  TimeToLearn
//
//  Created by admin on 5/30/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Les : NSObject <ObjectWithKeys>

@property NSString* lesId;
@property NSString* cursusId;
@property NSString* titel;
@property NSString* omschrijving;
@property NSArray* keys;
@property NSMutableArray* vragen;
@property BOOL voltooid;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;


@end
