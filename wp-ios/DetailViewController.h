//
//  DetailViewController.h
//  wp-ios
//
//  Created by andika on 4/22/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *judul;
@property (nonatomic, retain) NSDictionary *data;
- (id)initWitData:(NSDictionary *)data;
@property (weak, nonatomic) IBOutlet UIWebView *detail;
@end
