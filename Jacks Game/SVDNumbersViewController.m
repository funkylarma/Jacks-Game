//
//  SVDNumbersViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "SVDNumbersViewController.h"

@interface SVDNumbersViewController ()

@property (strong, nonatomic) NSDictionary *numbers;
@property (strong, nonatomic) NSArray *index;
@property (nonatomic) int counter;

@end

@implementation SVDNumbersViewController

#pragma mark - Initialisers
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.numbers = @{
                         @"0"  : @"Zero",
                         @"1"  : @"One",
                         @"2"  : @"Two",
                         @"3"  : @"Three",
                         @"4"  : @"Four",
                         @"5"  : @"Five",
                         @"6"  : @"Six",
                         @"7"  : @"Seven",
                         @"8"  : @"Eight",
                         @"9"  : @"Nine",
                         @"10" : @"Ten",
                         };
        self.index = @[
                       @"0",
                       @"1",
                       @"2",
                       @"3",
                       @"4",
                       @"5",
                       @"6",
                       @"7",
                       @"8",
                       @"9",
                       @"10",
                       ];
        self.counter = 0;
    }
    return self;
}

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];

    
    [self displayNumberAtIndex:self.counter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayNumberAtIndex:(int)index
{
    NSString *number = self.index[index];
    NSString *word = self.numbers[self.index[index]];
    self.lblNumber.text = number;
    self.lblWord.text = word;
}

- (IBAction)btnNext:(id)sender {
    self.counter++;
    if (self.counter < [self.index count]) {
        [self displayNumberAtIndex:self.counter];
    } else {
        self.counter = 0;
        [self displayNumberAtIndex:self.counter];
    }
}

- (IBAction)btnPrev:(id)sender {
    self.counter--;
    if (self.counter >= 0) {
        [self displayNumberAtIndex:self.counter];
    } else {
        self.counter = 10;
        [self displayNumberAtIndex:self.counter];
    }
}
@end
