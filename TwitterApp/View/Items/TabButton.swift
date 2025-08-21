//
//  TabButton.swift
//  TwitterApp
//
//  Created by Vlad on 21/8/25.
//

import SwiftUI

struct TabButton: View {
    
    @Binding var currentTab: String
    var title: String
    var animation: Namespace.ID
    
    var body: some View {
        Button {
            //
        } label: {
            LazyVStack(spacing: 12) {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(currentTab == title ? .blue : .gray)
                    .padding(.horizontal)
                
                if currentTab == title {
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                } else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        }
    }
}
