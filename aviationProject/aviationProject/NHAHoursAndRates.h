//
//  NHAHoursAndRates.h
//  HelloWorld
//
//  Created by Hackademy on 5/16/14.
//  Copyright (c) 2014 Dyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAHoursAndRates : UIViewController{
    
    IBOutlet UIScrollView *scroller;
}

@property (nonatomic, strong) IBOutlet UIButton *groupNumber;

@property (nonatomic, strong) IBOutlet UIButton *rentEvent;

-(IBAction)callGroupNumber:(id)sender;
    
-(IBAction)rentEvent:(id)sender;

@end
