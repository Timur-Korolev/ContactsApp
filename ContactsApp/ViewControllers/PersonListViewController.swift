//
//  PersonListViewController.swift
//  ContactsApp
//
//  Created by admin on 10/4/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    let persons = Person.getPersons()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].name + " " + persons[section].surname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonList", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Phone Number: " + persons[indexPath.section].phoneNumber
        case 1:
            cell.textLabel?.text = "Email: " + persons[indexPath.section].email
        default:
            break
        }
        return cell
    }
}
