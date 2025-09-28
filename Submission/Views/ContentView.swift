//
//  ContentView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            // Create a new appearance object
            let appearance = UITabBarAppearance()
            
            // This removes the default translucent background
            appearance.configureWithOpaqueBackground()
            
            // Set the background color to black
            appearance.backgroundColor = UIColor.black
            
            // Apply this new appearance to all tab bars in the app
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }

            Text("Search Screen")
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                }

            Text("Add Item Screen")
                .tabItem {
                    Image(systemName: "barcode.viewfinder")
                        .font(.largeTitle)
                }
                .tag(2)

            Text("Notifications Screen")
                .tabItem {
                    Image(systemName: "bell.fill")
                }

            Text("Profile Screen")
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
        .accentColor(.green)
    }
}
