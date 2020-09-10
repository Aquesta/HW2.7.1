//
//  Person.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var mail: String
    
    var fullName: String {
        "\(name)"+" "+"\(surname)"
    }
    
}

extension Person {
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let mails = DataManager.shared.mails.shuffled()
        
        for item in 0..<names.count {
            let person = Person(name: names[item],
                                surname: surnames[item],
                                phone: phones[item],
                                mail: mails[item])
            persons.append(person)
        }
        return persons
    }
}
