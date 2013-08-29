//
//  SVDNumbersViewController.h
//  Jacks Game
//
//  Created by Adam Chamberlin on 24/07/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVDNumbersViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblWord;
- (IBAction)btnNext:(id)sender;
- (IBAction)btnPrev:(id)sender;

@end
