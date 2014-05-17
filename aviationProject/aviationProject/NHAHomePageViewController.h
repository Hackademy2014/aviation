//
//  NHAHomePageViewController.h
//  aviationProject
//
//  Created by Hackademy on 5/17/14.
//  Copyright (c) 2014 NHAviation.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAHomePageViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIButton *phoneButton;

- (IBAction)openPhone:(id)sender;

@end