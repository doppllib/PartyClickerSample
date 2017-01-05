//
//  ShowPartyViewController.m
//  PartyClickerIos
//
//  Created by Kevin Galligan on 1/5/17.
//  Copyright © 2017 Kevin Galligan. All rights reserved.
//

#import "ShowPartyViewController.h"
#import "ComKgalliganPartyclickerDataParty.h"

@interface ShowPartyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *addPersonButton;
@property (weak, nonatomic) IBOutlet UILabel *partyName;

@end

@implementation ShowPartyViewController
- (IBAction)addPerson:(id)sender {
    [self.presenter addPerson];
    [self showCount];
}

- (IBAction)removePerson:(id)sender {
    [self.presenter removePerson];
    [self showCount];
}

-(void) showCount
{
    NSString * countString = [NSString stringWithFormat:@"%d", [self.presenter getPartyCount]];
    [self.addPersonButton setTitle:countString forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self showCount];
    
    [self.partyName setText:[self.presenter getParty]->name_];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
