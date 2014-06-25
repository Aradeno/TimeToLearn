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
    [self.myTableView reloadData];
    self.navigationBar.title = self.currentDiscussion;
    
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
    //tekstbericht sturen
    if(self.berichtTekst.text !=nil){
        NSString *nieuwBericht = [NSString stringWithFormat:@"%@: %@", self.currentGebruiker.gebruikersnaam, self.berichtTekst.text];
        [myArray addObject:nieuwBericht];
    }
    //tableview herladen
    [self.myTableView reloadData];
    
    //automatisch scrollen
    [self.myTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:[myArray count]-1 inSection:0]
                     atScrollPosition:UITableViewScrollPositionBottom
                             animated:YES];
}
-(IBAction)textFieldReturn:(id)sender
{
    //Toetsenbord wordt weggehaald wanneer er op return wordt geklikt.
    [sender resignFirstResponder];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Het toetsenbord weghalen wanneer er ergens anders wordt geklikt, (werkt om de een of andere reden niet)
    UITouch *touch = [[event allTouches] anyObject];
    if ([_berichtTekst isFirstResponder] && [touch view] != _berichtTekst) {
        [_berichtTekst resignFirstResponder];
        [super touchesBegan:touches withEvent:event];
    }
}

@end
