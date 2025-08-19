//
//  SlideMenu.swift
//  TwitterApp
//
//  Created by Vlad on 19/8/25.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Cem")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                            
                            Text("@cem_salta")
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 8, title: "Following")
                                FollowView(count: 16, title: "Followers")
                            }
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button {
                            withAnimation {
                                self.show.toggle()
                            }
                        } label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundStyle(Color("bg"))
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        ForEach(menuButtons, id:\.self) { item in
                            MenuButton(title: item)
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button {
                            //
                        } label: {
                            MenuButton(title: "Twitter Ads")
                        }
                        
                        Divider()
                        
                        Button {
                            //
                        } label: {
                            Text("Settings and privacy")
                                .foregroundStyle(.black)
                        }
                        .padding(.top, 20)
                        
                        Button {
                            //
                        } label: {
                            Text("Help Center")
                                .foregroundStyle(.black)
                        }

                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)

                        HStack {
                            Button {
                                //
                            } label: {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundStyle(Color("bg"))
                            }
                            
                            Spacer(minLength: 0)
                            
                            Image("barcode")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundStyle(Color("bg"))

                        }

                    }
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading) {
                        Button {
                            //
                        } label: {
                            Text("Create a new account")
                                .foregroundStyle(Color("bg"))
                        }
                        
                        Button {
                            //
                        } label: {
                            Text("Add an existing account")
                                .foregroundStyle(Color("bg"))
                        }

                        Spacer(minLength: 0)

                    }
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    SlideMenu()
}
