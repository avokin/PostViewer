#import "PVViewController.h"
#import "PVPost.h"
#import "PVTableViewCell.h"
#import "PVCollectionViewCell.h"

@interface PVViewController ()

@end

@implementation PVViewController {
    NSMutableArray *posts;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    posts = [[NSMutableArray alloc] init];

    for (int i = 0; i < 5; i++) {
        NSMutableArray *tags = [[NSMutableArray alloc] init];
        for (int j = 0; j < 5; j++) {
            [tags addObject: [NSString stringWithFormat: @"Post %d, tag %d", i + 1, j + 1]];
        }

        PVPost *post = [[PVPost alloc] initWithTitle: [NSString stringWithFormat:@"title%d", i + 1] text: @"text1" andTags: tags];
        [posts addObject: post];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [posts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PVPost *post = [posts objectAtIndex:indexPath.item];

    PVTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVTableViewCell"];
    cell.title.text = post.title;
    cell.tagsCollection.tag = indexPath.item;
    cell.tagsCollection.dataSource = self;
    cell.tagsCollection.delegate = self;
    [cell.tagsCollection reloadData];

    CGRect frame = cell.tagsCollection.frame;
    CGSize size = cell.tagsCollection.collectionViewLayout.collectionViewContentSize;

    cell.tagsCollection.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height);

    return cell;
}

- (void)loadView {
    [super loadView];
}


- (CGSize)collectionView:(UICollectionView *)cv layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGSize maximumSize = CGSizeMake(999999999, 999999999);
    PVPost *post = [posts objectAtIndex:cv.tag];

    int index = indexPath.item;
    NSString *text = [post.tags objectAtIndex: index];
    UIFont *font = [UIFont systemFontOfSize: 12.0];

    CGSize expectedSize = [text sizeWithFont:font constrainedToSize:maximumSize];


    return CGSizeMake(expectedSize.width, expectedSize.height);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath; {
    PVPost *post = [posts objectAtIndex:cv.tag];

    PVCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"CellTag" forIndexPath:indexPath];

    int index = indexPath.item;
    cell.labelTag.text = [post.tags objectAtIndex: index];

    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    PVPost *post = [posts objectAtIndex:view.tag];
    return post.tags.count;
}
@end
