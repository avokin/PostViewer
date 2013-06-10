Let's imagine we have list of posts. Each post has title and list of tags. We want to create app that displays table of posts and each table cell contains title of the post and its tags. List of tags we are going to display via UICollectionView. 

### The application has just loaded
And here is a problem. Our app is not adjust size of UICollectionView so that we could see all tags, see the first picture:
![Just After Load](https://raw.github.com/avokin/PostViewer/master/PostViewer/JustAfterLoad.png)
### When we scroll the table
But when we scroll the table in some cells height of the collection view calculated correctly, see the second picture:

![After Scrolling](https://raw.github.com/avokin/PostViewer/master/PostViewer/AfterScroll.png)

Here I calculate content size of the collection view. This code works well when we scrolled the table. 
```
  - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PVPost *post = [posts objectAtIndex:indexPath.item];

    PVTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVTableViewCell"];
    cell.title.text = post.title;
    cell.tagsCollection.tag = indexPath.item;
    cell.tagsCollection.dataSource = self;
    cell.tagsCollection.delegate = self;
    [cell.tagsCollection reloadData];

    CGRect frame = cell.tagsCollection.frame;
    CGSize size = cell.tagsCollection.collectionViewLayout.collectionViewContentSize; // Correct size is got here

    cell.tagsCollection.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height); // Setting correct size

    return cell;
}

```

So, the question is - how to make UIScrollView autoresize according to it's data?


