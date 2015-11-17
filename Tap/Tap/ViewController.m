//
//  ViewController.m
//  Tap
//
//  Created by GDB Consultants on 04/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(AVAudioPlayer *)setupAudPlayerWithFile:(NSString *)file type:(NSString *) type{
    NSString *path =[[NSBundle mainBundle]pathForResource:file ofType:type];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSError *error;
    
    AVAudioPlayer *audioPlayer= [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    
    if(!audioPlayer){
        NSLog(@"%@",[error description]);
    }
    
    return audioPlayer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_tile@2x.png" ]];
    scoreLabel.backgroundColor =[UIColor blackColor];
    timerLabel.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"field_time@2x.png" ]];
    
    buttonBeep = [self setupAudPlayerWithFile:@"ButtonTap" type:@"wav"];
    secondBeep = [self setupAudPlayerWithFile:@"SecondBeep" type:@"wav"];
    backgroundMusic = [self setupAudPlayerWithFile:@"HallOfTheMountainKing" type:@"mp3"];
    
     [self setUpGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressButton:(UIButton *)sender {
    count++;
    scoreLabel.text = [NSString stringWithFormat:@"score\n%li",(long)count];
    [buttonBeep play];
}

-  (void)setUpGame{
    
    seconds=30;
    count=0;
    
    timerLabel.text=[NSString stringWithFormat:@"Time:%li",(long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"score\n%li",(long)count];
    
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1f
                                            target:self
                                            selector:@selector(subtractTime)
                                            userInfo:nil
                                            repeats:YES];
    
    [backgroundMusic setVolume:0.5f];
    [backgroundMusic play];
}

-(void)subtractTime{
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li",(long)seconds];
    
    [secondBeep play];
    
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                        message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:nil];
        
        [alert show];
    }
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self setUpGame];
    
}


@end
