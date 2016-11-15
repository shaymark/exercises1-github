//
//  ContactTableViewCell.swift
//  exercises1
//
//  Created by shay markovich on 14/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    fileprivate let thumbnailSize:CGFloat = 50.0
    
    var contact: Contact? {
        didSet{
            
            if let fullSizedImage = UIImage(named: (contact?.image)!){
                contactImage.image = fullSizedImage.thumbnailOfSize(thumbnailSize)
            } else {
                contactImage.image = nil
            }
            
            topLeftLable.text = contact?.topLeft
            botomLeftLable.text = contact?.botomLeft
            topRightLable.text = contact?.topRight
        }
    }

    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var topLeftLable: UILabel!
    @IBOutlet weak var botomLeftLable: UILabel!
    @IBOutlet weak var topRightLable: UILabel!

}
