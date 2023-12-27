//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by testing on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    let person = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contact")
                }
            SectionView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}
#Preview {
    ContentView()
}

