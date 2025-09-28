//
//  ContentView.swift
//  Submission
//
//  Created by Shoaib Akhtar on 28/09/25.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor.black
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
