//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by GDB Consultants on 24/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

@synthesize recipeLabel;
@synthesize recipeName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    recipeLabel.text = recipeName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
