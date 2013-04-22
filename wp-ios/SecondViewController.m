//
//  SecondViewController.m
//  wp-ios
//
//  Created by andika on 4/22/13.
//  Copyright (c) 2013 SAI. All rights reserved.
//

#import "SecondViewController.h"
#import "AFHTTPClient.h"
#import "AFJSONRequestOperation.h"
#import "ApiUrl.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = NSLocalizedString(@"Category", @"Category");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        self.categgories = [[NSArray alloc] init];
        
        NSURL *url = [NSURL URLWithString:CategoryURL];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
         //   NSLog(@"App.net Global Stream: %@", JSON);
           self.categgories= [JSON objectForKey:@"categories"];
            [self.tableView reloadData];
        } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
            NSLog(@"Request Failed with Error: %@, %@", error, error.userInfo);
        }];
        [operation start];
        
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.categgories && self.categgories.count) {
        return self.categgories.count;
    } else {
        return 0;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"Cell Identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    NSDictionary *data = [self.categgories objectAtIndex:indexPath.row];
    cell.textLabel.text = [data objectForKey:@"title"];
    cell.detailTextLabel.text = [data objectForKey:@"description"];
    
    return cell;
}




@end
