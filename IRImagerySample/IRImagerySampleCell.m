//
//  IRImagerySampleCell.m
//  IRImagerySample
//
//  Created by Evadne Wu on 6/9/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRImagerySampleCell.h"
#import "NSBundle+IRImageryAdditions.h"

@interface IRImagerySampleCell ()

- (UIImage *) randomImage;

@end


@implementation IRImagerySampleCell
@synthesize mainImageView = _mainImageView;

- (void) awakeFromNib {

	[super awakeFromNib];
	
	self.mainImageView.image = [self randomImage];

}

- (void) prepareForReuse {

	[super prepareForReuse];
	
	self.mainImageView.image = [self randomImage];

}

- (UIImage *) randomImage {
	
	static dispatch_once_t onceToken;
	static NSArray *imagePaths = nil;
	dispatch_once(&onceToken, ^{

		imagePaths = [[NSBundle mainBundle] pathsForResourcesOfType:@"jpg" inDirectory:nil];
			
	});
	
	return [UIImage imageWithData:[NSData dataWithContentsOfMappedFile:[imagePaths objectAtIndex:(arc4random() % [imagePaths count])]]];

}

@end
