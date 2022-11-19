//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Нияз Нуруллин on 12.11.2022.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Homepage", systemImage: "house.fill")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
                CharactersListView()
                    .tabItem {
                        Label("List", systemImage: "list.star")
                    }
            }
        }
    }
}
