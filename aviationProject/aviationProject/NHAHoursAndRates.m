//
//  NHAHoursAndRates.m
//  HelloWorld
//
//  Created by Hackademy on 5/16/14.
//  Copyright (c) 2014 Dyn. All rights reserved.
//

#import "NHAHoursAndRates.h"

@interface NHAHoursAndRates ()

@end

@implementation NHAHoursAndRates

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
    UIGraphicsBeginImageContext(self.view.frame.size);
    //[[UIImage imageNamed:@"Blue_Sky.png"] drawInRect:self.view.bounds];
    [[UIImage imageNamed:@"sky.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.groupNumber addTarget:self action:@selector(callGroupNumber:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.rentEvent addTarget:self action:@selector(rentEvent:) forControlEvents:UIControlEventTouchUpInside];
}

-(IBAction)callGroupNumber:(id)sender{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"tel:+16036694877"]];
    [[UIApplication sharedApplication] openURL:url];
}

-(IBAction)rentEvent:(id)sender{
    NSString *stringURL = @"http://nhahs.org/images/stories/Event_Center_Brochure_LORES.pdf";
    NSURL *url = [NSURL URLWithString:stringURL];
    [[UIApplication sharedApplication] openURL:url];
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
