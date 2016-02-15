# WRBaseClasses

This is a library where I put all the useful classes I create to simplify my life as a developer. Feel free to fork and improve this library!

## WRBaseTableViewSource

This is a class that implements both `UITableViewDataSource` and `UITableViewDelegate` and puts all code that is repeated each time you build a `UITableView` into a super(b) class. It requires all your cells to inherit from `WRBaseTableViewCell`.

This class puts the responsibility of calculating the height with the cell, and the calculations which data goes where with the source. No need to dequeue your own cells anymore, just tell which `reuseIdentifier` to use with each object, and you're golden!

This is nearly identical for `WRBaseCollectionViewSource`.

## AttributedStringBuilder

This helps to build `NSAttributedString`s with ease, just define a style to use, and tell it what color to use. You no longer need to fiddle with indexes, just simply `append` a string and a style!

## AutoLayoutHelper

This class provides extensions to `NSLayoutConstraint`