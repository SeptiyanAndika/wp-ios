//
//  CustomCell.h
//  wp-ios
//
//  Created by andika on 4/23/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;
@property (weak, nonatomic) IBOutlet UILabel *judul;

@end
