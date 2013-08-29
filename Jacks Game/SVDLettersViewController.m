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
                          @"A" : @"aA",
                          @"B" : @"bB",
                          @"C" : @"cC",
                          @"D" : @"dD",
                          @"E" : @"eE",
                          @"F" : @"fF",
                          @"G" : @"gG",
                          @"H" : @"hH",
                          @"I" : @"iI",
                          @"J" : @"jJ",
                          @"K" : @"kK",
                          @"L" : @"lL",
                          @"M" : @"mM",
                          @"N" : @"nN",
                          @"O" : @"oO",
                          @"P" : @"pP",
                          @"Q" : @"qQ",
                          @"R" : @"rR",
                          @"S" : @"sS",
                          @"T" : @"tT",
                          @"U" : @"uU",
                          @"V" : @"vV",
                          @"W" : @"wW",
                          @"X" : @"xX",
                          @"Y" : @"yY",
                          @"Z" : @"zZ",
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
    self.lblLetter.text = letter;
    self.lblLetters.text = letters;
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
