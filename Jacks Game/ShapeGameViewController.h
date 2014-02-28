//
//  ShapeGameViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 27/11/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVDGameViewController.h"

@interface ShapeGameViewController : SVDGameViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgShape;
@property (weak, nonatomic) IBOutlet UIImageView *imgWord;
@property (strong, nonatomic) NSDictionary *shapes;

- (IBAction)btnPrev:(id)sender;
- (IBAction)btnNext:(id)sender;
- (IBAction)toggleDisplay:(id)sender;

@end