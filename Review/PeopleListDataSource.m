//
//  PeopleListDataSource.m
//  Review
//
//  Created by Ben Norris on 8/4/15.
//  Copyright (c) 2015 Ben Norris. All rights reserved.
//

#import "PeopleListDataSource.h"

@implementation PeopleListDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"Cell #%@", @(indexPath.row)];
    return cell;
}

@end
