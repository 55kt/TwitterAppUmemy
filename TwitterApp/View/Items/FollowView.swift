//
//  FollowView.swift
//  TwitterApp
//
//  Created by Vlad on 19/8/25.
//

import SwiftUI

struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            Text(title)
                .foregroundStyle(.gray)
        }
    }
}
