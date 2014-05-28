//
//  ObjectWithKeys.h
//  TimeToLearn
//
//  Created by admin on 5/22/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ObjectWithKeys <NSObject>

- (void) setKeyValues:(NSMutableArray *)values;
- (NSArray*) getKeys;

@end
