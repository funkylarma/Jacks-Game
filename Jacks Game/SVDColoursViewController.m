//
//  SVDColoursViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "SVDColoursViewController.h"

@interface SVDColoursViewController ()

@property (strong, nonatomic) NSDictionary *colours;
@property (strong, nonatomic) NSArray *index;
@property (nonatomic) int counter;

@end

@implementation SVDColoursViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.colours = @{
                         @"Red"    : [UIColor colorWithRed:215 green:0   blue:20  alpha:100],
                         @"Green"  : [UIColor colorWithRed:121 green:207 blue:25  alpha:100],
                         @"Yellow" : [UIColor colorWithRed:251 green:229 blue:0   alpha:100],
                         @"Blue"   : [UIColor colorWithRed:56  green:146 blue:227 alpha:100],
                         @"Orange" : [UIColor colorWithRed:251 green:166 blue:23  alpha:100],
                         @"Purple" : [UIColor colorWithRed:143 green:0   blue:255 alpha:100],
                         @"Brown"  : [UIColor colorWithRed:142 green:88  blue:40  alpha:100],
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
    NSString *colour = self.index[index];
    self.view.backgroundColor = self.colours[colour];
    self.lblColour.text = colour;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNext:(id)sender {
    self.counter++;
    if (self.counter < [self.index count]) {
        [self displayColourAtIndex:self.counter];
    } else {
        self.counter = 0;
        [self displayColourAtIndex:self.counter];
    }
}

- (IBAction)btnPrev:(id)sender {
    self.counter--;
    if (self.counter >= 0) {
        [self displayColourAtIndex:self.counter];
    } else {
        self.counter = 6;
        [self displayColourAtIndex:self.counter];
    }
}

@end
