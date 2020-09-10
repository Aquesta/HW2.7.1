//
//  Datamanager.swift
//  HW2.7.1
//
//  Created by Aquesta 's on 09.09.2020.
//  Copyright © 2020 Aquesta 's. All rights reserved.
//

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Alesha", "Stepan", "Vitaly", "Mihail",
        "Luka", "Petr", "Enokentiy", "Gleb",
        "Azrail", "Semen"
    ]
    
    let surnames = [
        "Ivanov", "Petrov", "Sidorov", "Slepakov",
        "Volya", "Zvonarev", "Klichko", "Dyma",
        "Bondarchyk", "Karamzin"
    ]
    
    let phones = [
        "79221123333", "79211222234", "79123334854", "79233324858",
        "79548383495", "73452235994", "74534000483", "79854837495",
        "75485493958", "74423848959"
        
    ]
    
    let mails = [
        "mail1@mail.ru", "mail2@mail.ru", "mail3@mail.ru", "mail4@mail.ru",
        "mail5@mail.ru", "mail6@mail.ru", "mail7@mail.ru", "mail8@mail.ru",
        "mail9@mail.ru", "mail10@mail.ru"
    ]
}

