//
//  DetailViewController.m
//  wp-ios
//
//  Created by andika on 4/22/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import "DetailViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      
    // Custom initialization
       
    }
    return self;
   
}

- (id)initWitData:(NSDictionary *)data {
    self = [super init];
    if (self) {
        self.data=data;
        
        
        
       
        // Custom initialization
        
    }
    return self;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.judul setText:[self.data objectForKey:@"title_plain"]];
    [self.detail loadHTMLString:[self.data objectForKey:@"content"] baseURL:nil];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(popAnimation)];
    self.navigationItem.leftBarButtonItem=backButton;

    
   
    // Do any additional setup after loading the view from its nib.
}


-(void)popAnimation{
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromBottom;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];

    [[self navigationController] popViewControllerAnimated:NO];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
