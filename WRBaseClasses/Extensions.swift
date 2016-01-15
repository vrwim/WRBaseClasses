//
//  Extensions.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 15/01/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import UIKit

extension UITableView {
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
