//
//  PersonsListWithDetailsTableViewController.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

import UIKit

class PersonsListWithDetailsTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        let person = persons[indexPath.row]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage.init(systemName: "phone")
        default:
            cell.textLabel?.text = person.mail
            cell.imageView?.image = UIImage.init(systemName: "tray")
        }
        return cell
    }
}
