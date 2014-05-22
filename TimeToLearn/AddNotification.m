//
//  AddNotification.m
//  TimeToLearn
//
//  Created by FHICT on 22/05/14.
//  Copyright (c) 2014 TIS. All rights reserved.
//

#import "AddNotification.h"

@interface AddNotification ()
- (IBAction)btnSave:(id)sender;
- (IBAction)btnCancel:(id)sender;

@end

@implementation AddNotification
@synthesize repeatSwitch;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    NSDate *pickerDate = [self.datePicker date];
    //schedule notification
    UILocalNotification* localNotification = [[UILocalNotification alloc]init];
    localNotification.fireDate = pickerDate;
    localNotification.alertBody=@"It's Time To Learn!";
    
    localNotification.alertAction=@"Show me!";
    
    localNotification.timeZone=[NSTimeZone defaultTimeZone];
    localNotification.applicationIconBadgeNumber=[[UIApplication sharedApplication]applicationIconBadgeNumber]+1;
    //ALs hij moet herhalen (iedere dag)
    if(repeatSwitch.on)
    {
        localNotification.repeatInterval = NSDayCalendarUnit;
    }
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //request to load table view data
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
    //dismiss the viewcontroller
    [self dismissViewControllerAnimated:YES completion:nil];
    
     
    
}

- (IBAction)btnCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
