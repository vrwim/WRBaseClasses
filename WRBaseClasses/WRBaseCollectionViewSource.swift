//
//  WRBaseCollectionViewSource.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 02/02/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import Foundation

class WRBaseCollectionViewSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var dataObjects: [AnyObject] = []
    
    /// Override this method to tell the collectionView what cellIdentifier to use
    func cellIdentifierForObject(object: AnyObject) -> String {
        fatalError("You need to override this method")
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cellInfo = dataObjects[indexPath.row]
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifierForObject(cellInfo), forIndexPath: indexPath) as! WRBaseCollectionViewCell
        
        cell.setData(cellInfo)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObjects.count
    }
}