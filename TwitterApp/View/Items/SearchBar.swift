//
//  SearchBar.swift
//  TwitterApp
//
//  Created by Vlad on 18/8/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                }
        }
        .onTapGesture {
            isEditing = true
        }
    }
}

#Preview {
    SearchBar(text: .constant("Search Text"), isEditing: .constant(true))
}
