//
//  ContactsNetworkCallback.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import Foundation

protocol ContactNetworkProtocol {
    func onSuccessFunc(contacts: [ContactModel]) -> ()
    func onErrorFunc(errorDescription: String, errorCode: Int) ->()
}

struct ContactsNetworkCallback : ContactNetworkProtocol{
   
    var onSuccess: ([ContactModel])-> ()
    var onError: (String, Int)->()
    
    internal func onErrorFunc(errorDescription: String, errorCode: Int) {
        onError(errorDescription, errorCode)
    }

    internal func onSuccessFunc(contacts: [ContactModel]) {
        onSuccess(contacts)
    }
    
}
