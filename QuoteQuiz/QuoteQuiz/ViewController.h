//
//  ViewController.h
//  QuoteQuiz
//
//  Created by GDB Consultants on 16/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipViewController.h"

@class Quiz;
@interface ViewController : UIViewController <QuizTipViewControllerDelegate>
@property (nonatomic, assign) NSInteger quizIndex;
@property (nonatomic, strong) Quiz * quiz;

- (IBAction)ans1Action:(id)sender;
- (IBAction)ans2Action:(id)sender;
- (IBAction)ans3Action:(id)sender;
- (IBAction)startAgain:(id)sender;
@end

