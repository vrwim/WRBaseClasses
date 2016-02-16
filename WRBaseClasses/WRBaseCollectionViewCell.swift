//
//  WRBaseCollectionViewCell.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 02/02/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import Foundation

class WRBaseCollectionViewCell: UICollectionViewCell {
	func setData(data: AnyObject) -> CGFloat {
		fatalError("This method needs to be overridden")
	}
}