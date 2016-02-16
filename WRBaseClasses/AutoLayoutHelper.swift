//
//  AutoLayoutHelper.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 15/02/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import Foundation
import UIKit

public class AutoLayoutHelper {
	public var view: UIView
	public var attribute: NSLayoutAttribute

	public init(view: UIView, attribute: NSLayoutAttribute) {
		self.view = view
		self.attribute = attribute
	}

	public func equals(other: AutoLayoutHelper, spacing: CGFloat = 0) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.Equal, toItem: other.view, attribute: other.attribute, multiplier: 1, constant: spacing)
	}

	public func equals(constant: CGFloat) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: constant);
	}

	public func greaterThanOrEquals(other: AutoLayoutHelper, spacing: CGFloat = 0) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.GreaterThanOrEqual, toItem: other.view, attribute: other.attribute, multiplier: 1, constant: spacing);
	}

	public func greaterThanOrEquals(constant: CGFloat) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.GreaterThanOrEqual, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: constant);
	}

	public func lessThanOrEquals(other: AutoLayoutHelper, spacing: CGFloat = 0) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.LessThanOrEqual, toItem: other.view, attribute: other.attribute, multiplier: 1, constant: spacing);
	}

	public func lessThanOrEquals(constant: CGFloat) -> NSLayoutConstraint
	{
		return NSLayoutConstraint(item: view, attribute: attribute, relatedBy: NSLayoutRelation.LessThanOrEqual, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: constant);
	}
}