//
//  networkResponseContacts.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import Foundation

protocol ContactsNetworkCallback {
    func onSuccess(contacts: [ContactModel])
    func onError(errorDescription: String, errorCode: Int)
    
    init with
}
