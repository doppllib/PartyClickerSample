//
//  MasterViewController.m
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import "PDDatabaseHelper.h"
#import "PAppManager.h"
#import "PDParty.h"
#import "PPPartyPresenter.h"
#import "PPDaggerComponent.h"
#import "PPPartyListPresenter.h"

#import "PartyClickerMaster-Swift.h"

#import "java/util/ArrayList.h"

@interface MasterViewController ()

@property (nonatomic, strong) JavaUtilArrayList *parties;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    self.presenter = [[ComKgalliganPartyclickerPresenterPartyListPresenter alloc] init];
    [[[PAppManager getInstance] getDaggerComponent] injectWithPPPartyListPresenter:self.presenter];
    
    [self.presenter applyUiInterfaceWithPPPartyListPresenter_UiInterface:self];
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}


- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
    
    BOOL callTableRefresh = self.parties != nil;
    [self refreshParties];
    if(callTableRefresh)
    {
        [self.tableView reloadData];
    }
}

- (void)dealloc{
    [self.presenter clearUiInterface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)refreshPartyListWithJavaUtilList:(id<JavaUtilList>)partyList
{
    self.parties = (JavaUtilArrayList*)partyList;
    [self.tableView reloadData];
}

- (void)showPartyWithComKgalliganPartyclickerDataParty:(ComKgalliganPartyclickerDataParty *)party
{
    
}


- (void)insertNewObject:(id)sender {
    [self.presenter createPartyWithNSString:@""];
    [self refreshParties];
    
    [self.tableView reloadData];
    
    [self performSegueWithIdentifier:@"showDetail" sender:[NSIndexPath indexPathForItem:0 inSection:0]];
}

- (void) refreshParties
{
    [self.presenter callRefreshPartyList];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PDParty* party = (PDParty*)[self.parties getWithInt:(jint)indexPath.row];
        //ComKgalliganPartyclickerDataParty *party = (ComKgalliganPartyclickerDataParty *)sender;
        
        ClickScreenViewController *controller = (ClickScreenViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItemWithParty:party];
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.parties size];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    ComKgalliganPartyclickerDataParty* party = (ComKgalliganPartyclickerDataParty*)[self.parties getWithInt:(jint)indexPath.row];
    
    NSString* countString = [NSString stringWithFormat:@"%d", [self.presenter countPeopleWithPDParty:party]];
    
    cell.textLabel.text = [party dateString];
    cell.detailTextLabel.text = countString;
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //[self.objects removeObjectAtIndex:indexPath.row];
        //[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.presenter deletePartyWithInt:(jint)indexPath.row];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}


@end
