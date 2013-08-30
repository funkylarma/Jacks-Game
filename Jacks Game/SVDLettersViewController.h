//
//  SVDLettersViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVDLettersViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgSingle;
@property (weak, nonatomic) IBOutlet UIImageView *imgCase;

- (IBAction)btnPrev:(id)sender;
- (IBAction)btnNext:(id)sender;
- (IBAction)toggleDisplay:(id)sender;

@end
