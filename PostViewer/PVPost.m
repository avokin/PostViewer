//
//  PVPost.m
//  PostViewer
//
//  Created by avokin on 6/10/13.
//  Copyright (c) 2013 avokin. All rights reserved.
//

#import "PVPost.h"

@implementation PVPost

@synthesize title = _title;
@synthesize tags = _tags;

- (id)initWithTitle: (NSString *) theTitle text:(NSString *) theText andTags: (NSArray *) theTags {
    self = [super init];
    if (self) {
        _tags = theTags;
        _title = theTitle;
    }
    return self;
}
@end
