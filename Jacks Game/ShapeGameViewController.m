//
//  ShapeGameViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 27/11/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "ShapeGameViewController.h"

@implementation ShapeGameViewController

#pragma mark - Initialisers

- (id)initWithCoder:(NSCoder *)aDecoder {
  
  self = [super initWithCoder:aDecoder];
  if (self) {
    self.index = @[
                   @"Square",
                   @"Circle",
                   @"Triangle",
                   @"Rectangle",
                   @"Oval",
                   ];
    self.counter = 0;
    
  }
  return self;
}


#pragma mark - View Lifecycle

- (void)viewDidLoad {
  
  [super viewDidLoad];
	// Do any additional setup after loading the view.
  [self displayShapeAtIndex:self.counter];
}


#pragma mark - Memory Management

- (void)didReceiveMemoryWarning {
  
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - GUI Updates

- (void)displayShapeAtIndex:(int)index {
  
  // Set string value for the colour
  NSString *shape = self.index[index];
  
  // Set the alpha levels of the images
  [self.imgShape setAlpha:1.0];
  [self.imgWord setAlpha:0.0];
  
  // Load the images
  self.imgShape.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", shape]];
  self.imgWord.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@_word.png", shape]];
  
  // Set the background colour
  self.view.backgroundColor = [self randomBackgroundColour];
}


#pragma mark - IBActions

- (IBAction)btnNext:(id)sender {
  
  self.counter++;
  if (self.counter < [self.index count]) {
    [self displayShapeAtIndex:self.counter];
  } else {
    self.counter = 0;
    [self displayShapeAtIndex:self.counter];
  }
}

- (IBAction)btnPrev:(id)sender {
  
  self.counter--;
  if (self.counter >= 0) {
    [self displayShapeAtIndex:self.counter];
  } else {
    self.counter = 6;
    [self displayShapeAtIndex:self.counter];
  }
}

- (IBAction)toggleDisplay:(id)sender {
  
  // Check to see what image is visible
  if (self.imgWord.alpha == 0.0) {
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgShape setAlpha:0.0];
    }];
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgWord setAlpha:1.0];
    }];
  } else {
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgShape setAlpha:1.0];
    }];
    [UIView animateWithDuration:0.4 animations:^{
      [self.imgWord setAlpha:0.0];
    }];
  }
}

@end