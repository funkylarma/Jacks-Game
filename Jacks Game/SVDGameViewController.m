//
//  SVDGameViewController.m
//  Jacks Game
//
//  Created by Adam Chamberlin on 27/11/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "SVDGameViewController.h"

@implementation SVDGameViewController

- (UIColor *)randomBackgroundColour {
    
  CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
  CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
  CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
  UIColor *colour = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
  return colour;
}

@end