//
//  CourseInformationScreen.m
//  TimeToLearn
//
//  Created by admin on 5/8/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "CourseInformationScreen.h"
#import "CourseChoiceScreen.h"

@interface CourseInformationScreen ()

@end

@implementation CourseInformationScreen

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
    
    //self.navigationController.navigationBar.translucent = NO;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
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
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CourseInformationScreenTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseInformationCell" forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.informationTitle setAdjustsFontSizeToFitWidth:YES];
    switch(indexPath.row){
        case 0:
            cell.informationTitle.text = @"Start";
            [cell.informationIcon setImage:[UIImage imageNamed:@"start.png"]];
            break;
        case 1:
            cell.informationTitle.text = @"Overzicht";
            [cell.informationIcon setImage:[UIImage imageNamed:@"overzicht.png"]];
            break;
        case 2:
            cell.informationTitle.text = @"Discussies";
            [cell.informationIcon setImage:[UIImage imageNamed:@"berichten.png"]];
            break;
        case 3:
            cell.informationTitle.text = @"Ranking";
            [cell.informationIcon setImage:[UIImage imageNamed:@"ranking.png"]];
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alertView;
    switch(indexPath.row){
        case 0:
            
            for(Les* les in self.currentCursus.lessen){
                if(!les.voltooid){
                    [self performSegueWithIdentifier:@"pushToCourseChoiceScreen" sender:self];
                    return;
                }
            }
            
            alertView = [[UIAlertView alloc] initWithTitle:@"Cursus voltooid" message:[NSString stringWithFormat:@"U hebt de cursus voltooid."] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [alertView show];
            
            break;
        case 1:
            [self performSegueWithIdentifier:@"pushToQuizzesOverview" sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"pushToDiscussionsOverview" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"pushToRankingOverview" sender:self];
            break;
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
    
    NSIndexPath *nsindexPath = [self.tableView indexPathForSelectedRow];
    
    CourseChoiceScreen *ccs;
    QuizzesOverview* qo;
    DiscussionsOverview *diso;
    RankingOverview *ro;
    
    switch(nsindexPath.row){
        case 0:
            ccs = (CourseChoiceScreen*)[segue destinationViewController];
            ccs.currentCursus = self.currentCursus;
            ccs.currentGebruiker = self.currentGebruiker;
            break;
        case 1:
            qo = (QuizzesOverview*)[segue destinationViewController];
            qo.currentCursus = self.currentCursus;
            qo.currentGebruiker = self.currentGebruiker;
            break;
        case 2:
            diso = (DiscussionsOverview*)[segue destinationViewController];
            diso.currentCursus = self.currentCursus;
            diso.currentGebruiker = self.currentGebruiker;
            break;
        case 3:
            ro = (RankingOverview*)[segue destinationViewController];
            ro.gebruikers = self.gebruikers;
            break;
    }
}

@end
