//
//  SVDColoursViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVDColoursViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblColour;
@property (weak, nonatomic) IBOutlet UIImageView *imgColour;

- (IBAction)btnNext:(id)sender;
- (IBAction)btnPrev:(id)sender;

@end
