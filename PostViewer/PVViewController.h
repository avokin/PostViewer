//
//  PVViewController.h
//  PostViewer
//
//  Created by avokin on 6/10/13.
//  Copyright (c) 2013 avokin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
