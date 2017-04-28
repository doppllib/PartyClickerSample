//
//  DetailViewController.m
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import "DetailViewController.h"
#import "CountListTableViewController.h"
#import "PDDatabaseHelper.h"
#import "PAppManager.h"
#import "PDParty.h"


@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *removeButton;

@end

@implementation DetailViewController

- (IBAction)addPerson:(id)sender {
    [self.detailItem addPerson];
    [self showCount];
}

- (IBAction)removePerson:(id)sender {
    [self.detailItem removePerson];
    [self showCount];
}

-(void) showCount
{
    jint count = [self.detailItem getPartyCount];
    NSString * countString = [NSString stringWithFormat:@"%d", count];
    [self.removeButton setEnabled:count > 0];
    [self.countLabel setText:countString];
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.navigationItem.title = [[self.detailItem getParty] dateString];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self showCount];
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        CountListTableViewController *controller = (CountListTableViewController *)[[segue destinationViewController] topViewController];
        controller.party = [self.detailItem getParty];
        
    }
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(PPPartyPresenter *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
