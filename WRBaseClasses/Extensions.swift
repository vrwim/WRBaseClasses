//
//  Extensions.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 15/01/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import UIKit

extension UITableView {
    /// An easier way to set both the `dataSource` and the `delegate`, this is the preferred way of using `WRBaseTableViewSource`
	var source: WRBaseTableViewSource? {
		get {
			return nil
		}
		set {
			dataSource = newValue
			delegate = newValue
		}
	}
}

// MARK: -

extension UICollectionView {
    /// An easier way to set both the `dataSource` and the `delegate`, this is the preferred way of using `WRBaseCollectionViewSource`
    var source: WRBaseCollectionViewSource? {
        get {
            return nil
        }
        set {
            dataSource = newValue
            delegate = newValue
        }
    }
}

// MARK: -

extension UIView {

	// MARK: Edges

	public var left: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Left);
	}

	public var right: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Right);
	}

	public var top: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Top);
	}

	public var bottom: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Bottom);
	}

	public var leading: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Leading);
	}

	public var trailing: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Trailing);
	}

	// MARK: Size

	public var width: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Width);
	}

	public var height: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Height);
	}

	// MARK: Center

	public var centerX: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .CenterX);
	}

	public var centerY: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .CenterY);
	}

	public var centerXWithinMargins: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .CenterXWithinMargins);
	}

	public var centerYWithinMargins: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .CenterYWithinMargins);
	}

	// MARK: Baseline

	public var baseline: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .Baseline);
	}

	public var lastBaseline: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .LastBaseline);
	}

	public var firstBaseline: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .FirstBaseline);
	}

	// MARK: Margins

	public var leftMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .LeftMargin);
	}

	public var rightMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .RightMargin);
	}

	public var topMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .TopMargin);
	}

	public var bottomMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .BottomMargin);
	}

	public var leadingMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .LeadingMargin);
	}

	public var trailingMargin: AutoLayoutHelper
	{
		return AutoLayoutHelper(view: self, attribute: .TrailingMargin);
	}
}

// MARK: -

extension NSLayoutConstraint {
    
    public func activate(active: Bool = true) -> NSLayoutConstraint {
        self.active = active
        return self
    }
    
}