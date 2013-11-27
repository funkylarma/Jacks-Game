//
//  SVDLettersViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "LettersGameViewController.h"

@implementation LettersGameViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.alphabet = @{
                          @"A" : @"Aa",
                          @"B" : @"Bb",
                          @"C" : @"Cc",
                          @"D" : @"Dd",
                          @"E" : @"Ee",
                          @"F" : @"Ff",
                          @"G" : @"Gg",
                          @"H" : @"Hh",
                          @"I" : @"Ii",
                          @"J" : @"Jj",
                          @"K" : @"Kk",
                          @"L" : @"Ll",
                          @"M" : @"Mm",
                          @"N" : @"Nn",
                          @"O" : @"Oo",
                          @"P" : @"Pp",
                          @"Q" : @"Qq",
                          @"R" : @"Rr",
                          @"S" : @"Ss",
                          @"T" : @"Tt",
                          @"U" : @"Uu",
                          @"V" : @"Vv",
                          @"W" : @"Ww",
                          @"X" : @"Xx",
                          @"Y" : @"Yy",
                          @"Z" : @"Zz",
                          };
        self.index = @[
                       @"A",
                       @"B",
                       @"C",
                       @"D",
                       @"E",
                       @"F",
                       @"G",
                       @"H",
                       @"I",
                       @"J",
                       @"K",
                       @"L",
                       @"M",
                       @"N",
                       @"O",
                       @"P",
                       @"Q",
                       @"R",
                       @"S",
                       @"T",
                       @"U",
                       @"V",
                       @"W",
                       @"X",
                       @"Y",
                       @"Z",
                       ];
        self.counter = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self displayLetterAtIndex:self.counter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayLetterAtIndex:(int)index
{
    // Get string values for the letter
    NSString *letter = self.index[index];
    NSString *letters = self.alphabet[self.index[index]];
    
    // Set the alpha levels of the images
    [self.imgSingle setAlpha:1.0];
    [self.imgCase setAlpha:0.0];

    // Set the alpha levels of the images
    self.imgSingle.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letter]];
    self.imgCase.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letters]];
    
    // Set the background colour
    self.view.backgroundColor = [self randomBackgroundColour];
}

- (IBAction)btnPrev:(id)sender
{
    // Decrease the counter
    self.counter--;
    if (self.counter >= 0) {
        [self displayLetterAtIndex:self.counter];
    } else {
        self.counter = 25;
        [self displayLetterAtIndex:self.counter];
    }
}

- (IBAction)btnNext:(id)sender
{
    // Increase the counter
    self.counter++;
    if (self.counter < [self.index count]) {
        [self displayLetterAtIndex:self.counter];
    } else {
        self.counter = 0;
        [self displayLetterAtIndex:self.counter];
    }
}

- (IBAction)toggleDisplay:(id)sender
{
    // Check to see what image is visible
    if (self.imgCase.alpha == 0.0) {
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgSingle setAlpha:0.0];
        }];
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgCase setAlpha:1.0];
        }];
    } else {
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgSingle setAlpha:1.0];
        }];
        [UIView animateWithDuration:0.4 animations:^{
            [self.imgCase setAlpha:0.0];
        }];
    }
}
@end
