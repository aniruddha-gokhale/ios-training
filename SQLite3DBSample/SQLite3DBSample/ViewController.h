//
//  ViewController.h
//  SQLite3DBSample
//
//  Created by GDB Consultants on 16/12/15.
//  Copyright © 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITabBarDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tblPeople;

- (IBAction)addNewRecord:(id)sender;


@end

