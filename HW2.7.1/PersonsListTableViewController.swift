//
//  PersonsListTableViewController.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow?.row else { return }
        personDetailVC.person = persons[indexPath]
    }
}

