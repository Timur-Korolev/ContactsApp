//
//  Contacts.swift
//  ContactsApp
//
//  Created by admin on 10/4/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
}

extension Person {
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
               
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
                            "375296775401",
                            "375296775402",
                            "375296775403",
                            "375296775404"]
        
        var emails = ["mail0@gmail.com",
                      "mail1@gmail.com",
                      "mail2@gmail.com",
                      "mail3@gmail.com",
                      "mail4@gmail.com"]
        
        var name: String
        var surname: String
        var phoneNumber: String
        var email: String
        
        while !names.isEmpty &&
            !surnames.isEmpty &&
            !phoneNumbers.isEmpty &&
            !emails.isEmpty {
                
                names = names.shuffled()
                name = names.removeFirst()
                
                surnames = surnames.shuffled()
                surname = surnames.removeFirst()
                
                phoneNumbers = phoneNumbers.shuffled()
                phoneNumber = phoneNumbers.removeFirst()
                
                emails = emails.shuffled()
                email = emails.removeFirst()
                
                persons.append(Person(name: name,
                                        surname: surname,
                                        phoneNumber: phoneNumber,
                                        email: email))
        }
        return persons
    }
}
