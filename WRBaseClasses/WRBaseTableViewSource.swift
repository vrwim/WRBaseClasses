//
//  WRBaseTableViewSource.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 12/01/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import UIKit

class WRBaseTableViewSource : NSObject, UITableViewDataSource, UITableViewDelegate {

    var prototypes: [String: WRBaseTableViewCell] = [:]
    
    /// Setting this property to > 1 tells you want to use multiple sections
    /// This expects your dataObjects to be [[AnyObject]]
    var sections: Int = 1
    
    /// Override this to indicate a static row height accross all rows  
    /// Please use this when applicable, prevents the use of prototypes.
    var staticRowHeight: CGFloat = -1
    
    /// The list of objects in this table
    var dataObjects: [AnyObject] {
        get {
            fatalError("You need to override this property")
        }
    }
    
    /// If set, will alternate these colors over your rows
    var alternatingColors: [UIColor] = []
    
    /// Override this method to tell the tableview what cellIdentifier to use
    func cellIdentifierForObject(object: AnyObject) -> String {
        fatalError("You need to override this method")
    }
    
    /// MARK: - UITableViewDataSource methods
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cellInfo: AnyObject
        if sections == 1 {
            cellInfo = dataObjects[indexPath.row]
        } else {
            cellInfo = (dataObjects[indexPath.section] as! [AnyObject])[indexPath.row]
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifierForObject(cellInfo)) as! WRBaseTableViewCell
        
        if alternatingColors.count > 0 {
            cell.backgroundColor = alternatingColors[indexPath.row % alternatingColors.count]
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (staticRowHeight >= 0) {
        return staticRowHeight
        }
        
        var data: AnyObject
        var cellId: String
        
        if sections == 1 {
            data = dataObjects[indexPath.row]
        } else {
            data = (dataObjects[indexPath.section] as! [AnyObject])[indexPath.row]
        }
        
        cellId = cellIdentifierForObject(data)
        
        if prototypes[cellId] == nil {
            prototypes[cellId] = tableView.dequeueReusableCellWithIdentifier(cellId) as? WRBaseTableViewCell
        }
        
        return prototypes [cellId]!.getHeight (data);
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(sections > 1) {
            return (dataObjects[section] as! [AnyObject]).count
        }
        return dataObjects.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections
    }
}
