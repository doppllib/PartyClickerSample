//
//  MasterViewController.h
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComKgalliganPartyclickerPresenterPartyListPresenter.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <ComKgalliganPartyclickerPresenterPartyListPresenter_UiInterface>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) ComKgalliganPartyclickerPresenterPartyListPresenter *presenter;


@end

