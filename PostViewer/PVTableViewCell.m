//
//  PVTableViewCell.m
//  PostViewer
//
//  Created by avokin on 6/10/13.
//  Copyright (c) 2013 avokin. All rights reserved.
//

#import "PVTableViewCell.h"

@implementation PVTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
