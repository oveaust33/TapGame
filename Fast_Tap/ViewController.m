//
//  ViewController.m
//  Fast_Tap
//
//  Created by ove on 14/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    time = 10;
    score = 0;
    gameInt = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startAction:(id)sender {
    
    if (time == 10) {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timecalculate) userInfo:nil repeats:YES];
        self.startButton.enabled = NO;
        self.startButton.alpha =0.5;
        
        }
    
    if(gameInt ==1){
        
        score ++;
        if(score ==1){
            
        self.scoreLabel.text = [NSString stringWithFormat:@"%i tap",score];
            
        }
        else {
            
            
            self.scoreLabel.text = [NSString stringWithFormat:@"%i taps",score];
            
            
        }
        
        
    }
    
    else
        
    {
        time =10 ;
        score=0;
        self.timeLabel.alpha=1.0;
        self.timeLabel.text =[NSString stringWithFormat:@"%i",time];
        self.scoreLabel.text=[NSString stringWithFormat:@"%i",score];
        [self.startButton setTitle:@"start" forState:UIControlStateNormal];
        
        
        
    }
    
    
    
}

-(void)timecalculate {
    time --;
    gameInt = 1;
    
    self.startButton.enabled =YES;
    
    [self.startButton setTitle:@"Tap" forState:UIControlStateNormal];
    
    self.startButton.alpha = 1.0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", time];
    
    if(time == 0){
    
        [timer invalidate];
    
        self.titleLabel.text =@"Your Score";
        
        self.timeLabel.alpha = 0.0; //vanish the timelabel for user to understand score
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.5;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        
        [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(restart) userInfo:nil repeats:NO];
        
    }
    
    
        
    }



-(void)restart {
    self.titleLabel.text = @"Tap Harder";
    
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    
    gameInt = 0;
    
    
}




@end
