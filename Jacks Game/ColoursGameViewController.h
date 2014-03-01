//
//  SVDColoursViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVDGameViewController.h"

@interface ColoursGameViewController : SVDGameViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgColour;
@property (strong, nonatomic) NSDictionary *colours;

- (IBAction)btnNext:(id)sender;
- (IBAction)btnPrev:(id)sender;
- (IBAction)toggleDisplay:(id)sender;

@end