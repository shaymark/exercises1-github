//
//  RootViewController.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let reuseIdentifier = "sideBarCell"
    
    let items = [
        SideBarItem(screenDisplayName: "contacts",  screenImage: #imageLiteral(resourceName: "Contacts-50"), screenIdentifierName: "ContactsTableViewController"),
        SideBarItem(screenDisplayName: "items", screenImage: #imageLiteral(resourceName: "Luggage-50"), screenIdentifierName: "ItemsCollectionViewController"),
        SideBarItem(screenDisplayName: "main", screenImage: #imageLiteral(resourceName: "one"), screenIdentifierName: "UITabBarController"),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        revealController.setMinimumWidth(200.0, maximumWidth: 240.0, for: self)
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func changeScreen(screenIdentifierName: String){
        revealController.frontViewController = self.storyboard?.instantiateViewController(withIdentifier: screenIdentifierName)
        revealController.show(revealController.frontViewController)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        if let cell = cell as? RootViewTableViewCell{
            let sideBarItem = items[indexPath.row]
            cell.screenName.text = sideBarItem.screenDisplayName
            cell.screenImage.image = sideBarItem.screenImage
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        changeScreen(screenIdentifierName: items[indexPath.row].screenIdentifierName)
    }
    
    struct  SideBarItem{
        var screenDisplayName: String
        var screenImage: UIImage
        var screenIdentifierName: String
    }
}
