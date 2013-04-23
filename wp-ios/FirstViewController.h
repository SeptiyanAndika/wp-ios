//
//  FirstViewController.h
//  wp-ios
//
//  Created by andika on 4/22/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
}
@property (nonatomic, retain) NSArray *latest;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (NSString *)flattenHTML:(NSString *)html;
- (id)initCategory:(NSInteger)idCategory nameCategory:(NSString *)nameCat;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@end
