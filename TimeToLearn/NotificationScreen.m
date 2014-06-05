//
//  NotificationScreen.m
//  TimeToLearn
//
//  Created by FHICT on 15/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "NotificationScreen.h"

@interface NotificationScreen ()
- (IBAction)ClearAll:(id)sender;

@end

@implementation NotificationScreen
@synthesize tableView;

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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTable) name:@"reloadData" object:nil];
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
    return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    localNotifications = [[UIApplication sharedApplication]scheduledLocalNotifications];
    UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
    
    
    //display notication info
    [cell.detailTextLabel setText:/*localNotification.alertBody*/[localNotification.fireDate description]];
    NSString *notificatieBeschrijving =[[localNotification.fireDate description] substringToIndex:16];
    
    if(localNotification.repeatInterval)
    {
        
        notificatieBeschrijving = [notificatieBeschrijving stringByAppendingString: @"               @repeat"];
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 5, 5)];
//        imgView.image = [UIImage imageNamed:@"selling.png"];
//        cell.imageView.image = imgView.image;
    }
    
    [cell.textLabel setText:notificatieBeschrijving];
    
    return cell;
}
-(void)reloadTable
{
    
    localNotifications = [[UIApplication sharedApplication]scheduledLocalNotifications];
    [self.tableView reloadData];
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
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */
- (IBAction)ClearAll:(id)sender {
    if(!localNotifications||!localNotifications.count)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Geen notificatie geselecteerd."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        NSIndexPath *selectedRowPath = [self.tableView indexPathForSelectedRow];
        int rowIndex = selectedRowPath.row;
        UILocalNotification *selectedObject = [localNotifications objectAtIndex:rowIndex];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Verwijder notificatie?"
                                                   message: [[selectedObject.fireDate description] substringToIndex:16]
                                                  delegate: self
                                         cancelButtonTitle:@"Annuleer"
                                         otherButtonTitles:@"OK",nil];
    
    
        [alert show];
    }
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
    {
        if(buttonIndex==1)
        {
            //give deletion code here
            
            NSIndexPath *selectedRowPath = [self.tableView indexPathForSelectedRow];
            int rowIndex = selectedRowPath.row;
            UILocalNotification *selectedObject = [localNotifications objectAtIndex:rowIndex];
            [[UIApplication sharedApplication] cancelLocalNotification:selectedObject];
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
        }
        
    }
@end
