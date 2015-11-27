//
//  DetailViewController.h
//  Rssreader
//
//  Created by GDB Consultants on 27/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property(copy,nonatomic)NSString *url;

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

