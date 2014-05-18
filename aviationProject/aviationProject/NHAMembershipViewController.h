//
//  NHAMembershipViewController.h
//  aviationProject
//
//  Created by Hackademy on 5/17/14.
//  Copyright (c) 2014 NHAviation.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAMembershipViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIButton *applyMembership;

@property (nonatomic, strong) IBOutlet UIButton *applyVolunteer;

-(IBAction)applyMembership:(id)sender;

-(IBAction)applyVolunteer:(id)sender;

@end
