//
//  ContactsModel.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class ContactsModel: NSObject {

    
    static let contacts: [Contact] = {
        return [
        Contact(image: "one", topLeft: "one topLeft", botomLeft: "one BottomLeft", topRight: "one TopRight"),
        Contact(image: "two", topLeft: "two topLeft", botomLeft: "two BottomLeft", topRight: "two TopRight"),
        Contact(image: "three", topLeft: "three topLeft", botomLeft: "three BottomLeft", topRight: "three TopRight"),
        Contact(image: "four", topLeft: "four topLeft", botomLeft: "four BottomLeft", topRight: "four TopRight"),
        Contact(image: "five", topLeft: "five topLeft", botomLeft: "five BottomLeft", topRight: "five TopRight"),
        Contact(image: "six", topLeft: "six topLeft", botomLeft: "six BottomLeft", topRight: "six TopRight"),
        Contact(image: "seven", topLeft: "seven topLeft", botomLeft: "seven BottomLeft", topRight: "seven TopRight"),
        Contact(image: "eight", topLeft: "eight topLeft", botomLeft: "eight BottomLeft", topRight: "eight TopRight"),
        Contact(image: "nine", topLeft: "nine topLeft", botomLeft: "nine BottomLeft", topRight: "nine TopRight"),
        Contact(image: "ten", topLeft: "ten topLeft", botomLeft: "ten BottomLeft", topRight: "ten TopRight"),
        Contact(image: "eleven", topLeft: "eleven topLeft", botomLeft: "eleven BottomLeft", topRight: "eleven TopRight"),
        Contact(image: "thirteen", topLeft: "thirteen topLeft", botomLeft: "thirteen BottomLeft", topRight: "thirteen TopRight"),
        Contact(image: "fourteen", topLeft: "fourteen topLeft", botomLeft: "fourteen BottomLeft", topRight: "fourteen TopRight"),
        Contact(image: "feffteen", topLeft: "feffteen topLeft", botomLeft: "feffteen BottomLeft", topRight: "feffteen TopRight"),
        Contact(image: "sixteen", topLeft: "sixteen topLeft", botomLeft: "sixteen BottomLeft", topRight: "sixteen TopRight"),
        Contact(image: "seventeen", topLeft: "seventeen topLeft", botomLeft: "seventeen BottomLeft", topRight: "seventeen TopRight"),
        Contact(image: "eighteen", topLeft: "eighteen topLeft", botomLeft: "eighteen BottomLeft", topRight: "eighteen TopRight"),
        ]}()
    
}


struct Contact {
    let image: String
    let topLeft: String
    let botomLeft: String
    let topRight: String
    
    init(image: String, topLeft: String, botomLeft: String, topRight: String){
        self.image = image
        self.topLeft = topLeft
        self.botomLeft = botomLeft
        self.topRight = topRight
    }
    
    init ( with data : AnyObject){
        if let dataDictionary = data as? [String: AnyObject]{
            self.image = dataDictionary["image"] as? String ?? ""
            self.topLeft = dataDictionary["topLeft"] as? String ?? ""
            self.botomLeft = dataDictionary["botomLeft"] as? String ?? ""
            self.topRight = dataDictionary["topRight"] as? String ?? ""
        } else {
            self.image = ""
            self.topLeft = ""
            self.botomLeft = ""
            self.topRight = ""
        }
    }
}
