//
//  ViewController.m
//  PartyClickerIos
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import "ViewController.h"
#import "ComKgalliganPartyclickerDataDatabaseHelper.h"
#import "ComKgalliganPartyclickerAppManager.h"
#import "ComKgalliganPartyclickerDataParty.h"
#import "ComKgalliganPartyclickerDataPartyPresenter.h"
#import "ShowPartyViewController.h"
#import "java/util/List.h"
#import "java/util/ArrayList.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *partyNameField;
@property (nonatomic, strong) JavaUtilArrayList *parties;
@end

@implementation ViewController
- (IBAction)createParty:(id)sender {
    ComKgalliganPartyclickerDataDatabaseHelper* dh = [ComKgalliganPartyclickerDataDatabaseHelper getInstanceWithAndroidContentContext:[ComKgalliganPartyclickerAppManager getContext]];
    
    ComKgalliganPartyclickerDataParty* party = [dh createPartyWithNSString:[self.partyNameField text]];
    [self showParty:party];
}

- (void) showParty:(ComKgalliganPartyclickerDataParty*)party
{
    [self refreshParties];
    [self.tableView reloadData];
    [self performSegueWithIdentifier:@"ShowParty" sender:party];
}



- (void) refreshParties
{
    ComKgalliganPartyclickerDataDatabaseHelper* dh = [ComKgalliganPartyclickerDataDatabaseHelper getInstanceWithAndroidContentContext:[ComKgalliganPartyclickerAppManager getContext]];
    self.parties = (JavaUtilArrayList*)[dh allParties];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self refreshParties];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.parties size];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    ComKgalliganPartyclickerDataParty* party = (ComKgalliganPartyclickerDataParty*)[self.parties getWithInt:(jint)indexPath.row];
    
    cell.textLabel.text = party->name_;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    ComKgalliganPartyclickerDataParty* party = (ComKgalliganPartyclickerDataParty*)[self.parties getWithInt:(jint)indexPath.row];
    [self performSegueWithIdentifier:@"ShowParty" sender:party];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowParty"]) {
        ShowPartyViewController *detailVC = segue.destinationViewController;
        ComKgalliganPartyclickerDataParty *party = (ComKgalliganPartyclickerDataParty *)sender;
        detailVC.presenter = [[ComKgalliganPartyclickerDataPartyPresenter alloc] initWithInt:party->id__];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
