//
//  ItemCollectionViewCell.swift
//  exercises1
//
//  Created by shay markovich on 14/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    var thumbnailSize:CGFloat = 100
    
    var item:Item? {
        didSet(oldValue){
            if let fullSizedImage = UIImage(named: (item?.image)!){
                itemImage.image = fullSizedImage.thumbnailOfSize(thumbnailSize)
            } else {
                itemImage.image = nil
            }
            
            nameLable.text = item?.name
        }
    }
    
   
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
}
