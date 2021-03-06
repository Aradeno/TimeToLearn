//
//  CoursesOverview.m
//  TimeToLearn
//
//  Created by admin on 5/15/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "CoursesOverview.h"

@interface CoursesOverview ()

@end

@implementation CoursesOverview

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.navigationItem.hidesBackButton = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.currentGebruiker.cursussen.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CoursesOverviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseCell" forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.courseTitle setAdjustsFontSizeToFitWidth:YES];
    Cursus* cursus = [self.currentGebruiker.cursussen objectAtIndex:indexPath.row];
    cell.courseTitle.text = cursus.naamCursus;
    [cell.courseImage setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:cursus.imgURL]]]];
    
    return cell;
}

-(void)viewDidAppear:(BOOL)animated
{
    if(self.toCursus != nil){
        UIAlertView  *alertView = [[UIAlertView alloc] initWithTitle:@"Gefeliciteerd" message:[NSString stringWithFormat:@"U hebt de cursus voltooid."] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
        [self performSegueWithIdentifier:@"pushToCourseInformationScreen" sender:self];
    }
}
/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *nsip = [self.tableView indexPathForSelectedRow];

    
    if([[segue destinationViewController] isKindOfClass:[CourseInformationScreen class]]){
        CourseInformationScreen* cis = [segue destinationViewController];
        if(self.toCursus == nil){
        cis.currentCursus = [self.currentGebruiker.cursussen objectAtIndex:nsip.row];
        } else {
            cis.currentCursus = self.toCursus;
            self.toCursus = nil;
        }
        cis.currentGebruiker = self.currentGebruiker;
    }
}

@end
