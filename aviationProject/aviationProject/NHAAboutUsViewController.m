//
//  NHAAboutUsViewController.m
//  aviationProject
//
//  Created by Hackademy on 5/17/14.
//  Copyright (c) 2014 NHAviation.org. All rights reserved.
//

#import "NHAAboutUsViewController.h"

@interface NHAAboutUsViewController ()


@end

@implementation NHAAboutUsViewController
//@synthesize scroller;

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
    // Do any additional setup after loading the view.
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(250, 1300)];
    //self.scroller.scrollEnabled = YES;
    //self.scroller.contentSize = CGSizeMake(self.view.frame.size.width-10,600);
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    //[[UIImage imageNamed:@"Blue_Sky.png"] drawInRect:self.view.bounds];
    [[UIImage imageNamed:@"sky.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
