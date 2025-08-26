//
//  MainView.swift
//  TwitterApp
//
//  Created by Vlad on 19/8/25.
//

import SwiftUI

struct MainView: View {
    //MARK: - Properties
    @State private var width: CGFloat = UIScreen.main.bounds.width - 90
    @State private var x: CGFloat = -UIScreen.main.bounds.width + 90
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                //MARK: - Top Bar
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    VStack {
                        TopBar(x: $x)
                        Home()
                    }
                    .offset(x: x + width)
                    
                    //MARK: - Slide Menu
                    SlideMenu()
                        .shadow(color: .black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .offset(x: x)
                        .background(Color.black.opacity(x == 0 ? 0.5 : 0))
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }
                        }
                }
                .gesture(DragGesture().onChanged({ (value) in
                    withAnimation {
                        if value.translation.width > 0 {
                            if x < 0 {
                                x = -width + value.translation.width
                            }
                        } else {
                            if x != -width {
                                x = value.translation.width
                            }
                        }
                    }
                }).onEnded { (value) in
                    withAnimation {
                        if -x < width / 2 {
                            x = 0
                        } else {
                            x = -width
                        }
                    }
                }
                )
            }
            .navigationBarHidden(true)
            .navigationTitle("")
        }
    }
}

//MARK: - Preview
#Preview {
    MainView()
}
