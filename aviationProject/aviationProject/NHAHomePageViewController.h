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

@property (nonatomic, strong) IBOutlet UIButton *mailButton;

@property (nonatomic, strong) IBOutlet UIButton *mapsButton;

@property (nonatomic, strong) IBOutlet UIButton *facebookButton;

@property (nonatomic, strong) IBOutlet UIButton *youtubeButton;

@property (nonatomic, strong) IBOutlet UIButton *newsEventsButton;

@property (nonatomic, strong) IBOutlet UIButton *photosButton;

@property (nonatomic, strong) IBOutlet UIButton *hamburgerButton;

- (IBAction)openPhone:(id)sender;

- (IBAction)openMail:(id)sender;

- (IBAction)openMaps:(id)sender;

- (IBAction)openFacebook:(id)sender;

- (IBAction)openYoutube:(id)sender;

@end