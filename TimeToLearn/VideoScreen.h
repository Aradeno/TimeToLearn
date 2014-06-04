//
//  VideoScreen.h
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface VideoScreen : UIViewController

@property Cursus *currentCursus;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
