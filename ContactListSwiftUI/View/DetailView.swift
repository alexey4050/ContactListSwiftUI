//
//  DetailView.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

struct DetailView: View {
    let person: Person
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Divider()
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: Contacts.phone.rawValue)
                        .foregroundStyle(.blue)
                    Text("Phone: \(person.phone)")
                        .font(.subheadline)
                }
                
                HStack {
                    Image(systemName:  Contacts.email.rawValue)
                        .foregroundStyle(.blue)
                    Text(person.email)
                        .font(.subheadline)
                }
            }
            .padding(.trailing, 100)
            Spacer()
        }
        .navigationBarTitle(person.fullName)
    }
}

#Preview {
    DetailView(person: Person.init(firstName: "Elena", lastName: "Lapina", email: "alena@mail.ru", phone: "9999"))
}
