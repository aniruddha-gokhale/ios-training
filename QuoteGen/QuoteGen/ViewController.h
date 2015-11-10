//
//  ViewController.h
//  QuoteGen
//
//  Created by GDB Consultants on 10/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,strong)NSArray *myQuotes;
@property(nonatomic,strong)NSMutableArray *movieQuotes;
@property(nonatomic,strong)IBOutlet UITextView *quoteText;

-(IBAction)quoteButtonTapped:(id)sender;
@end

