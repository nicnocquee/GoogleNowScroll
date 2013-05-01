This is just a *sample project* showing how to create Google Now-like scrolling (for iPhone).

I was interested by how Google implement the snap scrolling when showing the Now cards, then smooth scroll to show rest of the cards. And it turns out to be pretty easy to do. 
Inspired by [RBParallaxScrolling](https://github.com/ralfbernert/RBParallaxScrolling), I used a `UIScrollView` and a `UITableView`. And the secret is just to toggle the `paging` property of `UIScrollView` based on the content offset.
