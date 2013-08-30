//
//  SVDLettersViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "SVDLettersViewController.h"

@interface SVDLettersViewController ()

@property (strong, nonatomic) NSDictionary *alphabet;
@property (strong, nonatomic) NSArray *index;
@property (nonatomic) int counter;

@end

@implementation SVDLettersViewController

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
    NSString *letter = self.index[index];
    NSString *letters = self.alphabet[self.index[index]];
    self.view.backgroundColor = [self randomBackgroundColour];
    self.imgSingle.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letter]];
    self.imgCase.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", letters]];
}

- (UIColor *)randomBackgroundColour
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *colour = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return colour;
}

- (IBAction)btnPrev:(id)sender {
    self.counter--;
    if (self.counter >= 0) {
        [self displayLetterAtIndex:self.counter];
    } else {
        self.counter = 25;
        [self displayLetterAtIndex:self.counter];
    }
}

- (IBAction)btnNext:(id)sender {
    self.counter++;
    if (self.counter < [self.index count]) {
        [self displayLetterAtIndex:self.counter];
    } else {
        self.counter = 0;
        [self displayLetterAtIndex:self.counter];
    }
}
@end
