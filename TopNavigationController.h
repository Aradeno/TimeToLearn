//
//  TopNavigationController.h
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObjectWithKeys.h"

@interface TopNavigationController : UINavigationController

@property NSMutableArray* gebruikers;
@property NSMutableArray* cursussen;
@property NSMutableArray* vragen;
@property NSMutableArray* vraagOpties;
@property NSMutableArray* berichten;

@end
