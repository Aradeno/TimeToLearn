//
//  DiscussionsOverview.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "DiscussionsOverview.h"

@interface DiscussionsOverview ()

@end

@implementation DiscussionsOverview

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
    return self.currentCursus.berichten.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DiscussionsOverviewTableViewCell *cell = (DiscussionsOverviewTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"discussionsOverviewTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.datumTijd setAdjustsFontSizeToFitWidth:YES];
    
    Bericht* bericht = [self.currentCursus.berichten objectAtIndex:indexPath.row];
    
    cell.berichtTitel.text = bericht.berichtTitel;
    cell.datumTijd.text = bericht.datumTijd;
    NSLog(@"%@", cell.datumTijd.text);
    
    return cell;
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

        DiscussionScreen* cis = [segue destinationViewController];
        cis.currentGebruiker = self.currentGebruiker;
    
    Bericht *b =[self.currentCursus.berichten objectAtIndex:nsip.row];
    cis.currentDiscussion = b.berichtTitel;
    
}


@end
