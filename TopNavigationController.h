//
//  TopNavigationController.h
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface TopNavigationController : UINavigationController

@property NSMutableArray* gebruikers;
@property NSMutableArray* cursussen;
@property NSMutableArray* vragen;
@property NSMutableArray* vraagOpties;
@property NSMutableArray* berichten;

- (void)addToList:(id <ObjectWithKeys>) objWithKeys;

@end
