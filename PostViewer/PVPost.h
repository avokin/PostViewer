//
//  PVPost.h
//  PostViewer
//
//  Created by avokin on 6/10/13.
//  Copyright (c) 2013 avokin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVPost : NSObject
@property NSString *title;
@property NSArray *tags;

- (id)initWithTitle: (NSString *) theTitle text:(NSString *) theText andTags: (NSArray *) theTag;
@end
