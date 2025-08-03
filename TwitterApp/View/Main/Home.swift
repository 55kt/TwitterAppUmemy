//
//  Home.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ZStack {
                
                TabView {
                    Feed()
                        .tabItem {
                            Image("Home")
                        }
                    
                    SearchView()
                        .tabItem {
                            Image("Search")
                        }
                    
                    NotificationsView()
                        .tabItem {
                            Image("Notifications")
                        }
                    
                    MessagesView()
                        .tabItem {
                            Image("Messages")
                        }
                }
                
            }
        }
    }
}

#Preview {
    Home()
}
