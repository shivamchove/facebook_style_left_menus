//
//  ViewController.m
//  facebook_style_left_menus
//
//  Created by Shivam on 18/06/13.
//  Copyright (c) 2013 Shivam Chaturvedi. All rights reserved.
//

#import "ViewController.h"
#define MOVERIGHT  255;
#define SWING 7;

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)btnListPressed:(id)sender{
    CGRect destination = mainView.frame;
    
    if (destination.origin.x > 0) {
        destination.origin.x = 0;
    } else {
        destination.origin.x += MOVERIGHT;
    }
    
    [UIView animateWithDuration:0.25 animations:^{
        
        mainView.frame = destination;
        
    } completion:^(BOOL finished) {
        CGRect destination = mainView.frame;
        destination.origin.x -= SWING;
        [UIView animateWithDuration:0.10 animations:^{
           mainView.frame = destination; 
        }
        completion:^(BOOL finished){
            CGRect destination = mainView.frame;
            destination.origin.x += SWING;
            [UIView animateWithDuration:0.10 animations:^{
                mainView.frame = destination;
            }
                             completion:^(BOOL finished){
                                 // do something
                             }];
        }];
        //mainView.userInteractionEnabled = !(destination.origin.x > 0);
        
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
