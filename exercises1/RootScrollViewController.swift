//
//  RootScrollViewController.swift
//  
//
//  Created by shay markovich on 16/11/2016.
//
//

import UIKit

class RootScrollViewController: UIViewController {

    
    @IBOutlet weak var contactsView: UIStackView!
    @IBOutlet weak var TabView: UIStackView!
    @IBOutlet weak var ItemsView: UIStackView!
    
    struct ScreensControllersNames {
        static let contacts = "ContactsNavigationController"
        static let items = "ItemsCollectionViewController"
        static let tab = "UINavigationController"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactsView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(RootScrollViewController.itemClicked)))
        ItemsView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(RootScrollViewController.itemClicked)))
        TabView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(RootScrollViewController.itemClicked)))
        
    }

    func itemClicked(sender: UITapGestureRecognizer){
        if(sender.view == ItemsView) {
            changeScreen(screenIdentifierName: ScreensControllersNames.items)
        }
        
        if(sender.view == TabView){
            changeScreen(screenIdentifierName: ScreensControllersNames.tab)
        }
        
        if(sender.view == contactsView){
            changeScreen(screenIdentifierName: ScreensControllersNames.contacts)
        }
        
    }
    
    func changeScreen(screenIdentifierName: String){
        revealController.frontViewController = self.storyboard?.instantiateViewController(withIdentifier: screenIdentifierName)
        revealController.show(revealController.frontViewController)
    }

}
