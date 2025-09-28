//
//  ContentView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Search Screen")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            Text("Add Item Screen")
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                }
                .tag(2)

            Text("Notifications Screen")
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }

            Text("Profile Screen")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.green)
    }
}
