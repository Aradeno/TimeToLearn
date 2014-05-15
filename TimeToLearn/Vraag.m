//
//  Vraag.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "Vraag.h"

@implementation Vraag
-(bool)beantwoord:(NSInteger)vraagID{
    if(self.antwoordID==vraagID)
    {
        return true;
    }
    else return false;
}
@end
