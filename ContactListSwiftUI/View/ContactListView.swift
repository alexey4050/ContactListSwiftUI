//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

struct ContactListView: View {
    var body: some View {
        NavigationView {
            List(Person.getContactList()) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView()
}
