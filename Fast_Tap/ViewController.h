//
//  ViewController.h
//  Fast_Tap
//
//  Created by ove on 14/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
    
    int time;
    int score;
    int gameInt;
    
}
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startAction:(id)sender;

@end

