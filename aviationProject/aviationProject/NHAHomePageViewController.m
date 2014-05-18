//
//  NHAHomePageViewController.m
//  aviationProject
//
//  Created by Hackademy on 5/17/14.
//  Copyright (c) 2014 NHAviation.org. All rights reserved.
//

#import "NHAHomePageViewController.h"
#import "NHAHoursAndRates.h"

@interface NHAHomePageViewController ()


@end

@implementation NHAHomePageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.hamburgerButton.hidden = YES;
    self.hamburgerButton.enabled = NO;
    
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"sky.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.phoneButton addTarget:self action:@selector(openPhone:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.mailButton addTarget:self action:@selector(openMail:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.mapsButton addTarget:self action:@selector(openMaps:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.facebookButton addTarget:self action:@selector(openFacebook:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.youtubeButton addTarget:self action:@selector(openYoutube:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.donateButton addTarget:self action:@selector(donate:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.newsEventsButton addTarget:self action:@selector(seeNewsAndEvents:) forControlEvents:UIControlEventTouchUpInside];

    [self.photosButton addTarget:self action:@selector(seePhotos:) forControlEvents:UIControlEventTouchUpInside];
}

- (IBAction)openPhone:(id)sender{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"tel:+16036694820"]];
     [[UIApplication sharedApplication] openURL:url];
}


- (IBAction)openMail:(id)sender{
    NSString *stringURL = @"mailto:avmuseum@nhahs.org";
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openMaps:(id)sender{
    float latitude = 42.929435;
    float longitude = -71.427799;
    int zoom = 13;
    NSString *stringURL = [NSString stringWithFormat:@"http://maps.apple.com/maps?q=%f,%f&z=%d", latitude, longitude, zoom];
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openFacebook:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com/nhahs"];
     [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openYoutube:(id)sender{
    NSString *stringURL = @"https://www.youtube.com/watch?feature=player_embedded&v=M_g39M7XkW4";
     NSURL *url = [NSURL URLWithString:stringURL];
     [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)donate:(id)sender{
    NSString *stringURL = @"https://mobile.paypal.com/us/cgi-bin/webscr?cmd=_express-checkout-mobile&useraction=commit&token=EC-53A67114S5062843C#m";
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)seeNewsAndEvents:(id)sender{
    NSString *stringURL = @"https://www.facebook.com/nhahs";
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)seePhotos:(id)sender{
    NSString *stringURL = @"https://www.facebook.com/nhahs/photos";
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
