//
//  ContactsTableViewController.swift
//  exercises1
//
//  Created by shay markovich on 14/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ContactsTableViewController: UITableViewController {
    
    private let reuseIdentifier = "contactCell"
    
    var values : [Contact] = ContactsModel.contacts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("begin")
        
        let contactUrl = "https://time-limit.firebaseio.com/contacts.json"
        
        Alamofire.request(contactUrl).responseJSON { response in
            debugPrint(response)
            
            var values:[Contact] = []
          
            if let response = response.result.value as? [[String: AnyObject]] {
                    
                response.forEach{ cell in
                    let contact = Contact.init(with: cell as AnyObject)
                    values.append(contact)
                }
                    
                self.values = values
                self.tableView.reloadData()
            }
        }
        
        Alamofire.request(contactUrl).responseArray { (response: DataResponse<[ContactModel]>) in
            
            if let contacts = response.result.value{
                for contact in contacts {
                    print(contact.botomLeft ?? "")
                }
            }
            
        }
        
        NetworkApi.getContacts(
            onSuccess: { (contcats) in
                print(contcats[0])
            }, onError: { (errorDescription, errorCode) in
                print(errorCode)
            })
        
        NetworkApi.getContacts(callback:ContactsNetworkCallback( onSuccess: { (contcats) in
            print(contcats[0])
        }, onError: { (errorDescription, errorCode) in
            print(errorCode)
        }))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.values.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        if let contactCell = cell as? ContactTableViewCell {
            contactCell.contact = self.values[indexPath.row]
        }
        
        return cell
    }


}


