//
//  Contacts.swift
//  ContactsApp
//
//  Created by admin on 10/4/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import Foundation

struct Contact {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
}

extension Contact {
    
    static func getContacts() -> [Contact] {
        
        var contacts: [Contact] = []
               
        var names = ["John",
                     "Artur",
                     "Tom",
                     "Alexey",
                     "Viktor"]
        
        var surnames = ["Doe",
                        "Petrov",
                        "Ivanov",
                        "Sidorov",
                        "Ushakov"]
        
        var phoneNumbers = ["375296775400",
                            "375296775400",
                            "375296775400",
                            "375296775400",
                            "375296775400"]
        
        var emails = ["mail1@gmail.com",
                      "mail1@gmail.com",
                      "mail1@gmail.com",
                      "mail1@gmail.com",
                      "mail1@gmail.com"]
        
        var name: String
        var surname: String
        var phoneNumber: String
        var email: String
        
        while !names.isEmpty &&
            !surnames.isEmpty &&
            !phoneNumbers.isEmpty &&
            !emails.isEmpty {
                
                name = names.remove(at: .random(in: 0...names.count))
                surname = surnames.remove(at: .random(in: 0...surnames.count))
                phoneNumber = phoneNumbers.remove(at: .random(in: 0...phoneNumbers.count))
                email = emails.remove(at: .random(in: 0...emails.count))
                
                contacts.append(Contact(name: name,
                                        surname: surname,
                                        phoneNumber: phoneNumber,
                                        email: email))
        }
        return contacts
    }
}
