//
//  SVDNumbersViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "NumbersGameViewController.h"

@implementation NumbersGameViewController


#pragma mark - Initialisers

- (id)initWithCoder:(NSCoder *)aDecoder {
    
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
                       @"11" : @"Eleven",
                       @"12" : @"Twelve",
                       @"13" : @"Thirteen",
                       @"14" : @"Fourteen",
                       @"15" : @"Fithteen",
                       @"16" : @"Sixteen",
                       @"17" : @"Seventeen",
                       @"18" : @"Eighteen",
                       @"19" : @"Nineteen",
                       @"20" : @"Twenty"
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
                     @"11",
                     @"12",
                     @"13",
                     @"14",
                     @"15",
                     @"16",
                     @"17",
                     @"18",
                     @"19",
                     @"20"
                     ];
      self.counter = 0;
  }
  return self;
}


#pragma mark - View Lifecycle

- (void)viewDidLoad {
    
  [super viewDidLoad];
  
  // Display the first number
  [self displayNumberAtIndex:self.counter];
}


#pragma mark - Memory Management

- (void)didReceiveMemoryWarning {
    
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - GUI Updates

- (void)displayNumberAtIndex:(int)index {
    
  // Get string values for the numbers
  NSString *number = self.index[index];
  NSString *word = self.numbers[self.index[index]];
  
  // Set the alpha levels of the images
  [self.imgNumber setAlpha:1.0];
  [self.imgWord setAlpha:0.0];
  
  // Load the images
  self.imgNumber.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", number]];
  self.imgWord.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", word]];
  
  // Set the background colour
  self.view.backgroundColor = [self randomBackgroundColour];
}


#pragma mark - IBActions

- (IBAction)btnNext:(id)sender {
    
  // Increase the counter
  self.counter++;
  
  // If the counter
  if (self.counter < [self.index count]) {
    [self displayNumberAtIndex:self.counter];
  } else {
    self.counter = 0;
    [self displayNumberAtIndex:self.counter];
  }
}

- (IBAction)btnPrev:(id)sender {
    
  // Decrease the counter
  self.counter--;
  if (self.counter >= 0) {
    [self displayNumberAtIndex:self.counter];
  } else {
    self.counter = ([self.index count] - 1);
    [self displayNumberAtIndex:self.counter];
  }
}

- (IBAction)toggleDisplay:(id)sender {
    
  // Check to see what image is visible
  if (self.imgWord.alpha == 0.0) {
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgNumber setAlpha:0.0];
    }];
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgWord setAlpha:1.0];
    }];
  } else {
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgNumber setAlpha:1.0];
    }];
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgWord setAlpha:0.0];
    }];
  }
}

@end