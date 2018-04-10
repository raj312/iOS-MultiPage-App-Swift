//
//  UserDetail.swift
//  RajPatel_Assignment2
//
//  Created by Raj on 2018-04-09.
//  Copyright © 2018 Raj. All rights reserved.
//

import UIKit

class UserDetail: NSObject {
    
    var name: String?
    var address: String?
    var phone: String?
    var email: String?
    var age: String?
    var gender: String?
    var dateOfBirth: String?
    var avatar: String?
    
    func initWithData(name: String, address: String, phone: String, email: String, age: String, gender: String, dateOfBirth: String, avatar: String ) {
        self.name = name
        self.address = address
        self.phone = phone
        self.email = email
        self.age = age
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.avatar = avatar
    }
    
    
}
