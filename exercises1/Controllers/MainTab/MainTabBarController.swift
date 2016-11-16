//
//  MainTabViewController.swift
//  exercises1
//
//  Created by shay markovich on 16/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    @IBAction func menuItemClicked(_ sender: Any) {
        toggleMenu()
    }
    
    func toggleMenu(){
            revealController.show(revealController.leftViewController)
    }
 
    
}
