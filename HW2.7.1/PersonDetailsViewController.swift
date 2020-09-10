//
//  PersonDetailsViewController.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneOutlet: UILabel!
    @IBOutlet weak var mailOutlet: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneOutlet.text = person.phone
        mailOutlet.text = person.mail
        
        navigationItem.title = person.fullName        
    }
}
