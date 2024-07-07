//
//  ContentView.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            TaskView()
                .tabItem {
                    Label("Tasks", systemImage: "checklist")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
        
        
    }


#Preview {
    ContentView()
}
