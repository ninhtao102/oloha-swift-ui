//
//  OlohaApp.swift
//  Oloha
//
//  Created by Ninhtao on 27/4/24.
//

import SwiftUI

@main
struct OlohaApp: App {
    @State private var selectedTab = 0
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                TravelView()
                    .tabItem {
                        Label("", image: selectedTab == 0 ? "s-planet" : "planet")
                    }
                    .tag(0)
                DestinationView()
                    .tabItem {
                        Label("", image: selectedTab == 1 ? "s-earth" : "earth")
                    }
                    .tag(1)
                EventView()
                    .tabItem {
                        Label("", image: selectedTab == 2 ? "s-calendar" : "calendar")
                    }
                    .tag(2)
                LocalguidesView()
                    .tabItem {
                        Label("", image: selectedTab == 3 ? "s-woman" : "woman")
                    }
                    .tag(3)
                ProfileView()
                    .tabItem {
                        Label("", image: selectedTab == 4 ? "s-profile" : "profile")
                    }
                    .tag(4)
            })
            .onAppear {
                UITabBar.appearance().barTintColor = .white
            }
        }
    }
}
