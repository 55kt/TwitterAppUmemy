//
//  AuthenticationHeaderView.swift
//  TwitterApp
//
//  Created by Vlad on 26/8/25.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundStyle(.blue)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Image("Twitter")
                .resizable()
                .scaledToFill()
                .padding(.trailing)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    AuthenticationHeaderView()
}
