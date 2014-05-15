//
//  Vraag.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vraag : NSObject
@property NSInteger vraagId;
@property NSString* lesstof;
@property NSString* quizvraag;
@property NSInteger antwoordID;

@property NSMutableArray* vraagOpties;

-(bool)beantwoord:(NSInteger)vraagID;
@end
