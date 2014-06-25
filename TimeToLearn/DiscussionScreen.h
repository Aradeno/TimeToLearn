//
//  DiscussionScreen.h
//  TimeToLearn
//
//  Created by FHICT on 25/06/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiscussionScreen : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *myArray;
}
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITextField *berichtTekst;


- (IBAction)stuurBtn:(id)sender;

@end
