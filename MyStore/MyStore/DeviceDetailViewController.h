//
//  DeviceDetailViewController.h
//  MyStore
//
//  Created by GDB Consultants on 25/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *versionTextField;
@property (weak, nonatomic) IBOutlet UITextField *companyTextField;


- (IBAction)Cancle:(id)sender;
- (IBAction)Save:(id)sender;

@end
