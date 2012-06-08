//
//  IRImagerySampleTableViewController.m
//  IRImagerySample
//
//  Created by Evadne Wu on 6/9/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRImagerySampleTableViewController.h"

@interface IRImagerySampleTableViewController ()

@end

@implementation IRImagerySampleTableViewController

- (void) viewDidLoad {
	
	[super viewDidLoad];

}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
	
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

	return 1000000;

}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	static NSString * const kCellID = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellID];
	
	return cell;

}

@end
