//
//  ViewController.h
//  NPRParallaxScroll
//
//  Created by Nico Prananta on 4/30/13.
//  Copyright (c) 2013 Touches. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableViewController;

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet TableViewController *tableViewController;
@property (nonatomic, weak) IBOutlet UITableView *tableView;


@end
