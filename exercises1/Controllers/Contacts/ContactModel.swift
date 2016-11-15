//
//  ContactModel.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit
import ObjectMapper

class ContactModel: NSObject, Mappable {
    
    var image: String?
    var topLeft: String?
    var botomLeft: String?
    var topRight: String?
   
    init(with data: AnyObject) {
        super.init()
        
        if let dataDictionary = data as? [String: AnyObject]{
            self.image = dataDictionary["image"] as? String
            self.topLeft = dataDictionary["topLeft"] as? String
            self.botomLeft = dataDictionary["botomLeft"] as? String
            self.topRight = dataDictionary["topRight"] as? String
        }
    }
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        image <- map["image"]
        topLeft <- map["topLeft"]
        botomLeft <- map["botomLeft"]
        topRight <- map["topRight"]
    }

}
