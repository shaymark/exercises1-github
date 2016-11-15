//
//  NetworkApi.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class NetworkApi {
    
    static let baseURL = "https://time-limit.firebaseio.com/"
    static let contactsURL = baseURL + "contacts.json"
    
    static func getContacts(onSuccess: @escaping ([ContactModel])-> Swift.Void, onError:@escaping (String, Int) -> ()) {
        Alamofire.request(contactsURL).responseArray { (response: DataResponse<[ContactModel]>) in
            
            if let contacts = response.result.value{
                onSuccess(contacts)
            } else {
                onError("error", 1)
            }
            
        }
    }
    
    static func getContacts(callback: ContactsNetworkCallback) {
        Alamofire.request(contactsURL).responseArray { (response: DataResponse<[ContactModel]>) in
            
            if let contacts = response.result.value{
                callback.onSuccess(contacts)
            } else {
                callback.onError("error", 1)
            }
            
        }
    }
    
}
