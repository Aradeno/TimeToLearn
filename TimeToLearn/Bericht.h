//
//  Bericht.h
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bericht : NSObject
@property NSInteger berichtId;
@property NSString* berichtTekst;
@property NSMutableArray* reacties;
@end