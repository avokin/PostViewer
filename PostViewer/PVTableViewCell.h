//
//  PVTableViewCell.h
//  PostViewer
//
//  Created by avokin on 6/10/13.
//  Copyright (c) 2013 avokin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UICollectionView *tagsCollection;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end
