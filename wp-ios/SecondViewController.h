//
//  SecondViewController.h
//  wp-ios
//
//  Created by andika on 4/22/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
   
}
@property (nonatomic, retain) NSArray *categgories;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
