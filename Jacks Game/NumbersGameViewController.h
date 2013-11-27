//
//  SVDNumbersViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVDGameViewController.h"

@interface NumbersGameViewController : SVDGameViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgNumber;
@property (weak, nonatomic) IBOutlet UIImageView *imgWord;
@property (strong, nonatomic) NSDictionary *numbers;

- (IBAction)btnNext:(id)sender;
- (IBAction)btnPrev:(id)sender;
- (IBAction)toggleDisplay:(id)sender;

@end
