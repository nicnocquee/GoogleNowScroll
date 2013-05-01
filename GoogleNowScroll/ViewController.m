//
//  ViewController.m
//  NPRParallaxScroll
//
//  Created by Nico Prananta on 4/30/13.
//  Copyright (c) 2013 Touches. All rights reserved.
//

#import "ViewController.h"

#define INSET 80

@interface ViewController () <UIScrollViewDelegate> {
    CGFloat topInset;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView setPagingEnabled:YES];
	[self.scrollView setContentSize:CGSizeMake(CGRectGetWidth(self.scrollView.frame), 3*CGRectGetHeight(self.scrollView.frame))];
    
    topInset = CGRectGetHeight(self.tableView.frame)-INSET;
    [self.tableView setContentInset:UIEdgeInsetsMake(topInset, 0, -topInset, 0)];
    
    [self.tableView addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //NSLog(@"Content-offset y = %f", scrollView.contentOffset.y);
    float speedFactorFirst = 0.5f;
    if (scrollView.contentOffset.y < CGRectGetHeight(scrollView.frame)) {
        
        [scrollView setPagingEnabled:YES];        
    } else {
        [scrollView setPagingEnabled:NO];
    }
    [self.tableView setContentOffset:CGPointMake( 0, speedFactorFirst * scrollView.contentOffset.y - topInset)];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    CGSize size = [[change objectForKey:@"new"] CGSizeValue];
    [self.scrollView setContentSize:CGSizeMake(size.width, (size.height) * 2 + topInset-INSET)];
}

@end
