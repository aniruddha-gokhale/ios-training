//
//  SimpleTableCellTableViewCell.h
//  SimpleTable
//
//  Created by GDB Consultants on 23/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCellTableViewCell : UITableViewCell

@property(nonatomic,weak)IBOutlet UILabel *nameLabel;
@property(nonatomic,weak)IBOutlet UILabel *prepTimeLabel;
@property(nonatomic,weak)IBOutlet UIImageView *thumbnailImageView;


@end
