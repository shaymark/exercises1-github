//
//  ContactDetailsViewController.swift
//  exercises1
//
//  Created by shay markovich on 16/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var topLeftLable: UILabel!
    @IBOutlet weak var botomLeftLable: UILabel!
    @IBOutlet weak var topRightLable: UILabel!
    
    var contact: Contact? {
            didSet{
                
                topLeftLable?.text = contact?.topLeft
                botomLeftLable?.text = contact?.botomLeft
                topRightLable?.text = contact?.topRight
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topLeftLable.text = contact?.topLeft
        botomLeftLable.text = contact?.botomLeft
        topRightLable.text = contact?.topRight
        
        loadMoreContactDescription()
    }
    
    func loadMoreContactDescription(){
        
    }

}
