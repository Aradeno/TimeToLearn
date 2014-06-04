//
//  CursusVolger.h
//  TimeToLearn
//
//  Created by admin on 5/30/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface CursusVolger : NSObject <ObjectWithKeys>

@property NSString* cursusVolgerId;
@property NSString* userId;
@property NSString* cursusId;
@property NSArray* keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
