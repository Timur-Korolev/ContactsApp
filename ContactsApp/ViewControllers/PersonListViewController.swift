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
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonList", for: indexPath)
        let name = persons[indexPath.row].name
        let surname = persons[indexPath.row].surname
        
        cell.textLabel?.text = name + " " + surname

        return cell
    }
 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let infoVC = segue.destination as! InfoViewController
            infoVC.phoneNumber += persons[indexPath.row].phoneNumber
            infoVC.email += persons[indexPath.row].email
            infoVC.name = persons[indexPath.row].name + " " + persons[indexPath.row].surname
        }
    }
    

}
