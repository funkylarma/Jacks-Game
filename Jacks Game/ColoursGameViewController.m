//
//  SVDColoursViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "ColoursGameViewController.h"

@implementation ColoursGameViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.colours = @{
                         @"Red"    : [UIColor colorWithRed:215.0/255.0 green:0.0/255.0   blue:20.0/255.0  alpha:100],
                         @"Green"  : [UIColor colorWithRed:121.0/255.0 green:207.0/255.0 blue:25.0/255.0  alpha:100],
                         @"Yellow" : [UIColor colorWithRed:251.0/255.0 green:229.0/255.0 blue:0.0/255.0   alpha:100],
                         @"Blue"   : [UIColor colorWithRed:56.0/255.0  green:146.0/255.0 blue:227.0/255.0 alpha:100],
                         @"Orange" : [UIColor colorWithRed:251.0/255.0 green:166.0/255.0 blue:23.0/255.0  alpha:100],
                         @"Purple" : [UIColor colorWithRed:143.0/255.0 green:0.0/255.0   blue:255.0/255.0 alpha:100],
                         @"Brown"  : [UIColor colorWithRed:142.0/255.0 green:88.0/255.0  blue:40.0/255.0  alpha:100],
                         };
        self.index = @[
                       @"Red",
                       @"Green",
                       @"Yellow",
                       @"Blue",
                       @"Orange",
                       @"Purple",
                       @"Brown",
                       ];
        self.counter = 0;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self displayColourAtIndex:self.counter];
}

- (void)displayColourAtIndex:(int)index
{
    // Set string value for the colour
    NSString *colour = self.index[index];
    
    // Set the alpha levels of the images
    [self.imgColour setAlpha:0.0];
    
    // Load the images
    self.imgColour.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", colour]];
    
    // Set the background colour
    self.view.backgroundColor = self.colours[colour];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNext:(id)sender
{
    self.counter++;
    if (self.counter < [self.index count]) {
        [self displayColourAtIndex:self.counter];
    } else {
        self.counter = 0;
        [self displayColourAtIndex:self.counter];
    }
}

- (IBAction)btnPrev:(id)sender
{
    self.counter--;
    if (self.counter >= 0) {
        [self displayColourAtIndex:self.counter];
    } else {
        self.counter = 6;
        [self displayColourAtIndex:self.counter];
    }
}

- (IBAction)toggleDisplay:(id)sender
{
    // Check to see what image is visible
    if (self.imgColour.alpha == 0.0) {
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgColour setAlpha:1.0];
        }];
    } else {
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgColour setAlpha:0.0];
        }];
    }
}

@end
