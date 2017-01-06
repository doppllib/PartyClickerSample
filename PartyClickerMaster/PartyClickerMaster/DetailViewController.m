//
//  DetailViewController.m
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import "DetailViewController.h"
#import "ComKgalliganPartyclickerDataDatabaseHelper.h"
#import "ComKgalliganPartyclickerAppManager.h"
#import "ComKgalliganPartyclickerDataParty.h"


@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

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
    NSString * countString = [NSString stringWithFormat:@"%d", [self.detailItem getPartyCount]];
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


#pragma mark - Managing the detail item

- (void)setDetailItem:(ComKgalliganPartyclickerDataPartyPresenter *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
