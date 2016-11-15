//
//  StaticRootTableViewController.swift
//  exercises1
//
//  Created by shay markovich on 16/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class StaticRootTableViewController: UITableViewController {

    let screenControlersNames = [
        "ContactsTableViewController",
        "ItemsCollectionViewController",
        "UITabBarController"
    ]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tag = tableView.cellForRow(at: indexPath)?.tag
        changeScreen(screenIdentifierName: screenControlersNames[tag!])
    }
    
    func changeScreen(screenIdentifierName: String){
        revealController.frontViewController = self.storyboard?.instantiateViewController(withIdentifier: screenIdentifierName)
        revealController.show(revealController.frontViewController)
    }

}
