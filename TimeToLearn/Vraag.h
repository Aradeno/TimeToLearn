//
//  Vraag.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectWithKeys.h"

@interface Vraag : NSObject <ObjectWithKeys>

@property NSString* vraagId;
@property NSString* cursusId;
@property NSString* titel;
@property NSString* videoTitel;
@property NSString* videoURL;
@property NSString* magazineTitel;
@property NSString* quizvraag;
@property NSMutableArray* magazines;
@property NSMutableArray* vraagOpties;
@property NSArray *keys;

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;


@end
