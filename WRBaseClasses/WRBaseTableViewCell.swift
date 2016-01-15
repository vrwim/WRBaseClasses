//
//  WRBaseTableViewCell.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 12/01/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import UIKit

class WRBaseTableViewCell: UITableViewCell {
    func getHeight(data: AnyObject) -> CGFloat {
        fatalError("This method needs to be overridden")
    }
    func setData(data: AnyObject) -> CGFloat {
        fatalError("This method needs to be overridden")
    }
}
