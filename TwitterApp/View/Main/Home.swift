//
//  Home.swift
//  TwitterApp
//
//  Created by Vlad on 3/8/25.
//

import SwiftUI

struct Home: View {
    //MARK: - Properties
    @State private var selectedIndex: Int = 0
    @State private var showCreateTweet: Bool = false
    @State private var text: String = ""
    
    //MARK: - Body
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    //MARK: - Feed Section
                    Feed()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .navigationBarHidden(true)
                        .tabItem {
                            if (selectedIndex == 0) {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundStyle(Color("bg"))
                            } else {
                                Image("Home")
                            }
                        }
                        .tag(0)
                    
                    //MARK: - Search Section
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .navigationBarHidden(true)
                        .tabItem {
                            if (selectedIndex != 1) {
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundStyle(Color("bg"))
                            } else {
                                Image("Search")
                            }
                        }
                        .tag(1)
                    
                    //MARK: - Notification Section
                    NotificationsView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .navigationBarHidden(true)
                        .tabItem {
                            if (selectedIndex != 2) {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundStyle(Color("bg"))
                            } else {
                                Image("Notifications")
                            }
                        }
                        .tag(2)
                    
                    //MARK: - Messages Section
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .navigationBarHidden(true)
                        .tabItem {
                            if (selectedIndex != 3) {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundStyle(Color("bg"))
                            } else {
                                Image("Messages")
                            }
                        }
                        .tag(3)
                }
                
                //MARK: - Create Tweet Float Button
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            self.showCreateTweet.toggle()
                        } label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding()

                }
                .padding(.bottom, 65)
                
            }
            .sheet(isPresented: $showCreateTweet) {
                CreateTweetView()
            }
        }
    }
}

//MARK: - Preview
#Preview {
    Home()
}
