//
//  DiscussionScreen.h
//  TimeToLearn
//
//  Created by FHICT on 25/06/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objects.h"

@interface DiscussionScreen : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *myArray;
}
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITextField *berichtTekst;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationBar;
@property Bericht *currentDiscussion;
@property Gebruiker *currentGebruiker;
@property (weak, nonatomic) IBOutlet UITextView *discussionTekst;

- (IBAction)stuurBtn:(id)sender;
-(IBAction)textFieldReturn:(id)sender;

@end
