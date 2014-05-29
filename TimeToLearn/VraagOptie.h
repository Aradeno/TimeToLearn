//
//  VraagOptie.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface VraagOptie : NSObject <ObjectWithKeys>

@property NSInteger vraagOptieId;
@property NSString* antwoord;
@property NSMutableArray* 
@property NSArray *keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
