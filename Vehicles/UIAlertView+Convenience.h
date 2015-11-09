//
//  UIAlertView+Convenience.h
//  Vehicles
//
//  Created by GDB Consultants on 09/11/15.
//  Copyright (c) 2015 Designated Nerd Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Convenience)

// Shows a UIAlertView with the given title and message, and an OK button to dismiss it.
+ (void)showSimpleAlertWithTitle:(NSString *)title andMessage:(NSString *)message;



@end
