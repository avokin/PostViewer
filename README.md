Let's imagine we have list of posts. Each post has title and list of tags. We want to create app that displays table of posts and each table cell contains title of the post and its tags. List of tags we are going to display via UICollectionView. And here is a problem. Our app is not adjust size of UICollectionView so that we could see all tags, see the first picture:
[![Build Status](https://raw.github.com/avokin/PostViewer/master/PostViewer/JustAfterLoad.png)]

but when we scroll table in some cells height of the collection view calculated correctly, see the second picture:
[![Build Status](https://raw.github.com/avokin/PostViewer/master/PostViewer/AfterScrolling.png)]

So, the question is - how to make UIScrollView autoresize according to it's data?