//
//  EditInfoViewController.h
//  SQLite3DBSample
//
//  Created by GDB Consultants on 21/12/15.
//  Copyright © 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditInfoViewController : UIViewController<UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;

@property (weak, nonatomic) IBOutlet UITextField *txtLastname;

@property (weak, nonatomic) IBOutlet UITextField *txtAge;



- (IBAction)saveInfo:(id)sender;


@end
