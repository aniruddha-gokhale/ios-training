//
//  ViewController.m
//  HelloWorld
//
//  Created by GDB Consultants on 23/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage:(UIButton *)sender {
    
    UIAlertView *helloWorldAlert=[[UIAlertView alloc]initWithTitle:@"My First App" message:@"Hello World" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [helloWorldAlert show];
}
@end
