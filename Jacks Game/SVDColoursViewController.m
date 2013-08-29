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

@end

@implementation SVDColoursViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.colours = @{
                         @"red": @"Red"
                         };
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
