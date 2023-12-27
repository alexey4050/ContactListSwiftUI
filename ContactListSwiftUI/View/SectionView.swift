//
//  SectionView.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

struct SectionView: View {
    let contactList = Person.getContactList()
    var body: some View {
        NavigationView {
            List {
                ForEach(contactList) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: Contacts.phone.rawValue)
                                .foregroundStyle(.blue)
                            Text(person.phone)
                        }
                        HStack {
                            Image(systemName: Contacts.email.rawValue)
                                .foregroundStyle(.blue)
                            Text(person.email)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SectionView()
}
