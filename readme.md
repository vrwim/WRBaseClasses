# WRBaseClasses

This is a Swift library where I put all the useful classes I create to simplify my life as a developer. Feel free to fork and improve this library!

## WRBaseTableViewSource

This is a class that implements both `UITableViewDataSource` and `UITableViewDelegate` and puts all code that is repeated each time you build a `UITableView` into a super(b) class. It requires all your cells to inherit from `WRBaseTableViewCell`.

This class puts the responsibility of calculating the height with the cell, and the calculations which data goes where with the source. No need to dequeue your own cells anymore, just tell which `reuseIdentifier` to use with each object, and you're golden!

This is nearly identical for `WRBaseCollectionViewSource`.

## AttributedStringBuilder

This helps to build `NSAttributedString`s with ease, just define a style to use, and tell it what color to use. You no longer need to fiddle with indexes, just simply `append` a string and a style!

## AutoLayoutHelper

This class provides a simple, declarative way to define constraints. Instead of typing the entire `view.addConstraint(NSLayoutConstraint(item: view, attribute: attribute, relatedBy: relation, toItem: otherView, attribute: otherAttribute, multiplier: 1, constant: 0))`, you can simply type `label.top.Equals(view.top).active = true`.

## To do

Things I need to make before this library is 'finished' for me:

 - FlowLayout (just like Android, simply add a view and define a frame for that view and it will flow from left to right and take the space it needs)
 - ViewPager (again just like Android, but with some customizations to prettify it)
 - Some more things I come up with!

## Disclaimer

Everything here was originally written by me in Xamarin.iOS, and as such variable names may be incorrectly named. Functionally, the code should work.