//
//  InfoViewController.swift
//  ContactsApp
//
//  Created by admin on 10/6/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var phoneNumber: String!
    var email: String!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = "Phone Number: " + phoneNumber
        emailLabel.text = "Email: " + email
        title = name
    }

}
