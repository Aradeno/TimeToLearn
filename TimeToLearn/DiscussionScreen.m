//
//  DiscussionScreen.m
//  TimeToLearn
//
//  Created by FHICT on 25/06/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "DiscussionScreen.h"

@interface DiscussionScreen ()

@end

@implementation DiscussionScreen


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    myArray = [NSMutableArray array];
    [myArray addObject:@"first string"]; // same with float values
    [myArray addObject:@"second string"];
    [myArray addObject:@"third string"];
    [self.myTableView reloadData];
    self.berichtTekst.text = @"testttt";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return myArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.myTableView dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *s = [myArray objectAtIndex:indexPath.row];
    cell.textLabel.text = s;
    
    return cell;
}

- (IBAction)stuurBtn:(id)sender {
    if(self.berichtTekst !=nil){
        //[myArray
    }
}
@end
