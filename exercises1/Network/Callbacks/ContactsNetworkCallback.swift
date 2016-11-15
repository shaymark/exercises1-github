//
//  ContactsNetworkCallback.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import Foundation

struct ContactsNetworkCallback{
    var onSuccess: ([ContactModel])-> ()
    var onError: (String, Int)->()
}
