//
//  PopoverExampleViewController.m
//  Review
//
//  Created by Ben Norris on 8/4/15.
//  Copyright (c) 2015 Ben Norris. All rights reserved.
//

#import "PopoverExampleViewController.h"

@interface PopoverExampleViewController () <UIAdaptivePresentationControllerDelegate>

@end

@implementation PopoverExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    if ([segue.identifier isEqualToString:@"ShowComposeList"]) {
        // Make it be a popover
        UIViewController *destination = segue.destinationViewController;
        destination.presentationController.delegate = self;
        destination.preferredContentSize = CGSizeMake(200.0, 150.0);
    }
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller traitCollection:(UITraitCollection *)traitCollection {
    return UIModalPresentationNone;
}

@end
