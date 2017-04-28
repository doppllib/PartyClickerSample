//
//  MasterViewController.h
//  PartyClickerMaster
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPPartyListPresenter.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <PPPartyListPresenter_UiInterface>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) PPPartyListPresenter *presenter;


@end

