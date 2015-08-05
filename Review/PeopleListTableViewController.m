//
//  PeopleListTableViewController.m
//  Review
//
//  Created by Ben Norris on 8/4/15.
//  Copyright (c) 2015 Ben Norris. All rights reserved.
//

#import "PeopleListTableViewController.h"
#import "PeopleDetailViewController.h"

static NSString * const showDetailSegue = @"ShowDetail";

@interface PeopleListTableViewController ()

@end

@implementation PeopleListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:showDetailSegue]) {
        PeopleDetailViewController *detail = segue.destinationViewController;
        
        UITableViewCell *cell = sender;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
        // TODO: Ask the data source for the data object at indexPath.row
        // TODO: Pass the data object to the detail view controller
    }
}

@end
