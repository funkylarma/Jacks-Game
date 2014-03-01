//
//  SVDGameViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 27/11/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SVDGameViewController : UIViewController

@property (strong, nonatomic) NSArray *index;
@property (nonatomic) int counter;

- (UIColor *)randomBackgroundColour;

@end