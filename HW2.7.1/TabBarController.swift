//
//  TabBarController.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let personsListVC = viewControllers?.first as? PersonsListTableViewController else { return }
        guard let personsListWithDetailsVC = viewControllers?.last as? PersonsListWithDetailsTableViewController else { return }
        
        personsListVC.persons = persons
        personsListWithDetailsVC.persons = persons
        
        navigationItem.title = "Personal List"
    }
}
