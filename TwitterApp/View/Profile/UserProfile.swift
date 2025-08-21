//
//  UserProfile.swift
//  TwitterApp
//
//  Created by Vlad on 20/8/25.
//

import SwiftUI

struct UserProfile: View {
    
    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    
    @State var currentTab = "Tweets"
    
    @Namespace var animation
    
    @State var tabBarOffset: CGFloat = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                GeometryReader { proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    
                    return AnyView(
                        ZStack {
                            Image("banner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                .cornerRadius(0)
                            
                            BlurView()
                                .opacity(blurViewOpacity())
                            
                            VStack(spacing: 5) {
                                Text("Cem")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                                Text("150 tweets")
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)
                        }
                            .clipped()
                            .frame(height: minY > 0 ? 180 + minY : nil)
                            .offset(y: minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80 )
                    )
                }
                .frame(height: 180)
                .zIndex(1)
                
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .padding(8)
                            .background(Color.white)
                            .background(Color.white.clipShape(Circle()))
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Text("Edit Profile")
                                .foregroundStyle(.blue)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Capsule().stroke(Color.blue, lineWidth: 1.5))
                        }
                    }
                    .padding(.top, -25)
                    .padding(.bottom, -10)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cem")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@cem_salta")
                            .foregroundStyle(.gray)
                        
                        Text("I dont know what i dont know. So i try to figure out what i dont know. 4️⃣4️⃣ Founder")
                        
                        HStack(spacing: 5) {
                            Text("13")
                                .foregroundStyle(.primary)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .foregroundStyle(.gray)
                            
                            Text("680")
                                .foregroundStyle(.primary)
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                            
                            Text("Following")
                                .foregroundStyle(.gray)
                        }
                    }
                    .overlay(
                        GeometryReader { proxy -> Color in
                            let minY = proxy.frame(in: .global).minY
                            
                            DispatchQueue.main.async {
                                self.titleOffset = minY
                            }
                            
                            return Color.clear
                        }.frame(width: 0, height: 0), alignment: .top)
                        
                        VStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 0) {
                                    TabButton(currentTab: $currentTab, title: "Tweets", animation: animation)
                                    
                                    TabButton(currentTab: $currentTab, title: "Tweets & Likes", animation: animation)
                                    
                                    TabButton(currentTab: $currentTab, title: "Media", animation: animation)
                                    
                                    TabButton(currentTab: $currentTab, title: "Likes", animation: animation)
                                }
                            }
                            
                            Divider()
                        }
                        .padding(.top, 30)
                        .background(Color.white)
                        .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                        .overlay(
                            GeometryReader { proxy -> Color in
                                let minY = proxy.frame(in: .global).minY
                                DispatchQueue.main.async {
                                    self.tabBarOffset = minY
                                }
                                return Color.clear
                            }
                                .frame(width: 0, height: 0), alignment: .top
                        )
                        .zIndex(1)
                    }
                }
            }
        }
    
    func blurViewOpacity() -> Double {
        let progress = -(offset + 80) / 150
        return Double(-offset > 80 ? progress : 0)
    }
    
    func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        return offset
    }
    
    func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        return progress <= 20 ? progress : 20
    }
    
    func getScale() -> CGFloat {
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        return scale < 1 ? scale : 1
    }
}

#Preview {
    UserProfile()
}
