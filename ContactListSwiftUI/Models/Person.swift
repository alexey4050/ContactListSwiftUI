//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let firstNames = dataStore.firstNames.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
